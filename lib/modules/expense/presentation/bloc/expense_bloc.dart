import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/core/error/toast_helper.dart';
import 'package:expense_tracker_lite/core/services/service_locator.dart';
import 'package:expense_tracker_lite/modules/expense/data/models/add_expense_model.dart';
import 'package:expense_tracker_lite/modules/expense/domain/repo/expense_repo.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_event.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_state.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_event.dart';
import 'package:expense_tracker_lite/utils/helpers/constants.dart';
import 'package:expense_tracker_lite/utils/helpers/functions.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final ExpenseRepository _repo;

  ExpenseBloc(this._repo) : super(const ExpenseState()) {
    log("ExpenseBloc initialized"); // ✅
    on<ClearExpenseRequestModel>((event, emit) {
      emit(state.copyWith(addExpenseModel: AddExpenseModel()));
    });
    on<GetExchangeRate>((event, emit) async {
      log("===> Event Received: ${event.baseCurrency}"); // ✅
      await _getExchangeRate(event, emit);
    });
    on<ChangeCategory>((event, emit) {
      log("===> Event Received: ${event.categoryId}"); // ✅
      emit(state.copyWith(
        addExpenseModel:
            state.addExpenseModel?.copyWith(categoryId: event.categoryId),
      ));
    });

    on<ChangeAmount>((event, emit) {
      emit(state.copyWith(
        addExpenseModel: state.addExpenseModel?.copyWith(amount: event.amount),
      ));
    });
    on<SubmitReceipt>((event, emit) {
      emit(state.copyWith(
        addExpenseModel:
            state.addExpenseModel?.copyWith(receipt: event.receipt?.path),
      ));
    });

    on<ChangeDate>((event, emit) {
      emit(state.copyWith(
        addExpenseModel: state.addExpenseModel?.copyWith(date: event.date),
      ));
    });
    on<ChangeCurrency>((event, emit) {
      emit(state.copyWith(
        addExpenseModel:
            state.addExpenseModel?.copyWith(currency: event.currency),
      ));
    });
    on<ChangeRate>((event, emit) {
      emit(state.copyWith(
        addExpenseModel: state.addExpenseModel?.copyWith(rate: event.rate),
      ));
    });
    on<SubmitExpense>((event, emit) async {
      log("===> Event Received: ${event.expense}231231"); // ✅
      await _submitExpense(event, emit);
    });
  }

  Future<void> _getExchangeRate(
    GetExchangeRate event,
    Emitter<ExpenseState> emit,
  ) async {
    log("GetExchangeRate ${event.baseCurrency}");
    emit(state.copyWith(isLoadingExchangeRate: true, errorMessage: null));

    final result =
        await _repo.getExchangeRate(baseCurrency: event.baseCurrency);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingExchangeRate: false,
            errorMessage: failure.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            isLoadingExchangeRate: false,
            exchangeRateResponse: response,
          ),
        );
      },
    );
  }

  Future<void> _submitExpense(
    SubmitExpense event,
    Emitter<ExpenseState> emit,
  ) async {
    emit(state.copyWith(isLoadingSubmitExpense: true, errorMessage: null));
    log("DDDDDDDDDDDDDDDD ${Constants.categories.firstWhere((element) => element.id == state.addExpenseModel?.categoryId).name}");
    final result = await _repo.submitExpense(
      expense: ExpenseModel(
        id: generateUniqueId(),
        convertedAmount: ((state.addExpenseModel?.rate ?? 1) *
                (state.addExpenseModel?.amount ?? 1))
            .toString(),
        currency: state.addExpenseModel?.currency ?? "",
        category: Constants.categories
            .firstWhere(
                (element) => element.id == state.addExpenseModel?.categoryId)
            .name,
        source: "Manually",
        amount: state.addExpenseModel?.amount.toString() ?? "",
        date: state.addExpenseModel?.date ?? DateTime.now(),
        icon: Constants.categories
            .firstWhere(
                (element) => element.id == state.addExpenseModel?.categoryId)
            .icon,
        iconColor: Constants.categories
            .firstWhere(
                (element) => element.id == state.addExpenseModel?.categoryId)
            .iconColor,
        backgroundColor: Constants.categories
            .firstWhere(
                (element) => element.id == state.addExpenseModel?.categoryId)
            .backgroundColor,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingSubmitExpense: false,
            errorMessage: failure.message,
          ),
        );
      },
      (response) {
        ToastHelper.showToast(
            message: "Expense added successfully", type: ToastType.success);
        instance<HomeBloc>().add(GetExpenses());
        emit(
          state.copyWith(
            isLoadingSubmitExpense: false,
            // expenses: [
            //   ...state.expenses,
            //   event.expense,
            // ],
          ),
        );
      },
    );
  }
}
