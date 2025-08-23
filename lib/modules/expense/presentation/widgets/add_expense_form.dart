import 'dart:developer';

import 'package:expense_tracker_lite/core/error/toast_helper.dart';
import 'package:expense_tracker_lite/core/presentation/widget/custom_button.dart';
import 'package:expense_tracker_lite/core/presentation/widget/custom_text_field.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_event.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_state.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/widgets/category_item.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/widgets/custom_drop_down_field.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/widgets/field_label.dart';
import 'package:expense_tracker_lite/utils/helpers/constants.dart';
import 'package:expense_tracker_lite/utils/helpers/functions.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/helpers/validation.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'show_set_date_time.dart';

class AddExpenseForm extends StatefulWidget {
  const AddExpenseForm({super.key});

  @override
  State<AddExpenseForm> createState() => _AddExpenseFormState();
}

class _AddExpenseFormState extends State<AddExpenseForm> {
  TextEditingController amountController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FieldLabel(label: 'Categories'),
              CustomDropdownField(
                hint: "Categories",
                val: state.addExpenseModel?.categoryId,
                maxHeight: 200,
                items: (Constants.categories ?? [])
                    .map((item) => DropdownMenuItem<int>(
                          value: item.id,
                          child: Text(item.name ?? "",
                              style: TextStyles.manropeFontSemiBold.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.gray400,
                              )),
                        ))
                    .toList(),
                onChanged: (value) {
                  context.read<ExpenseBloc>().add(
                        ExpenseEvent.changeCategory(value ?? 0),
                      );
                },
              ),
              FieldLabel(label: 'Amount'),
              CustomTextField(
                textEditingController: amountController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context.read<ExpenseBloc>().add(
                        ExpenseEvent.changeAmount(double.parse(value)),
                      );
                },
                fieldValidator: (val) => Validation.isEmptyValidator(
                  context,
                  val,
                  "Amount",
                ),
                hint: "\$50,000",
              ),
              FieldLabel(label: 'Date'),
              CustomTextField(
                textEditingController: TextEditingController(
                  text: state.addExpenseModel?.date == null
                      ? ""
                      : DateFormat('yyyy-MM-dd').format(
                          (state.addExpenseModel?.date ?? DateTime.now())
                              .toLocal(),
                        ),
                ),
                keyboardType: TextInputType.datetime,
                fieldValidator: (val) {
                  return;
                },
                hint: "02/08/2025",
                suffixWidget:
                    Icon(Icons.calendar_month, color: AppColors.gray400),
                isReadOnly: true,
                onTap: () => showSetDateTimeDialog(
                  context,
                  onDateSelected: (String dateTime) {
                    log("Date $dateTime");
                    context.read<ExpenseBloc>().add(
                          ExpenseEvent.changeDate(DateTime.parse(dateTime)),
                        );
                  },
                  initialDateTime:
                      state.addExpenseModel?.date ?? DateTime.now(),
                ),
              ),
              FieldLabel(label: 'Attach Receipt'),
              CustomTextField(
                textEditingController: TextEditingController(
                  text: state.addExpenseModel?.receipt,
                ),
                keyboardType: TextInputType.text,
                fieldValidator: (val) {
                  return;
                },
                hint: "Upload Image",
                suffixWidget: state.addExpenseModel?.receipt == null
                    ? Icon(Icons.camera_alt_outlined, color: AppColors.gray400)
                    : GestureDetector(
                        onTap: () {
                          context.read<ExpenseBloc>().add(
                                ExpenseEvent.submitReceipt(null),
                              );
                        },
                        child: Icon(Icons.delete, color: AppColors.gray400),
                      ),
                isReadOnly: true,
                onTap: () async {
                  final pickedFile = await pickFile();
                  if (pickedFile != null) {
                    context.read<ExpenseBloc>().add(
                          ExpenseEvent.submitReceipt(pickedFile),
                        );
                    print("File path: ${state.addExpenseModel?.receipt}");
                  } else {
                    print("لم يتم اختيار أي ملف");
                  }
                },
              ),
              FieldLabel(label: "Currencies"),
              CustomDropdownField(
                hint: "Currencies",
                val: state.addExpenseModel?.currency,
                maxHeight: 200,
                items: state.exchangeRateResponse?.conversionRates.entries
                        .map((entry) {
                      final currencyCode = entry.key;
                      final rate = entry.value;

                      return DropdownMenuItem<String>(
                        value: currencyCode,
                        child: Text(
                          currencyCode,
                          style: TextStyles.manropeFontSemiBold.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.gray400,
                          ),
                        ),
                      );
                    }).toList() ??
                    [],
                onChanged: (value) {
                  final selectedCode = value as String;
                  final selectedRate =
                      state.exchangeRateResponse?.conversionRates[selectedCode];
                  log("Selected rate: $selectedRate");
                  context.read<ExpenseBloc>().add(
                        ExpenseEvent.changeCurrency(value.toString()),
                      );
                  context.read<ExpenseBloc>().add(
                        ExpenseEvent.changeRate((selectedRate ?? 0).toDouble()),
                      );
                },
              ), // Categories
              verticalSpace(16),
              FieldLabel(label: 'Categories'),
              GridView.builder(
                itemCount: Constants.categories.length + 1,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 8.h,
                ),
                itemBuilder: (context, index) {
                  if (index == Constants.categories.length) {
                    return Column(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.primary),
                          ),
                          child: Icon(Icons.add, color: AppColors.primary),
                        ),
                        verticalSpace(8),
                        Text(
                          "Add Category",
                          style: TextStyles.manropeFontMedium.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        context.read<ExpenseBloc>().add(
                              ExpenseEvent.changeCategory(
                                  Constants.categories[index].id),
                            );
                      },
                      child: CategoryItem(
                        category: Constants.categories[index],
                        isSelected: state.addExpenseModel?.categoryId ==
                            Constants.categories[index].id,
                      ),
                    );
                  }
                },
              ),
              verticalSpace(16),
              state.isLoadingSubmitExpense
                  ? const Center(child: CircularProgressIndicator())
                  : CustomButton(
                      width: 1.sw,
                      buttonColor: AppColors.primary,
                      title: "Save",
                      onpress: () {
                        if (!formKey.currentState!.validate()) return;

                        if (state.addExpenseModel?.date == null) {
                          ToastHelper.showToast(
                            message: "Please Select Date",
                            type: ToastType.error,
                          );
                          return;
                        }

                        if (state.addExpenseModel?.categoryId == null) {
                          ToastHelper.showToast(
                            message: "Please Select Category",
                            type: ToastType.error,
                          );
                          return;
                        }

                        if (state.addExpenseModel?.currency == null ||
                            state.addExpenseModel!.currency!.isEmpty) {
                          ToastHelper.showToast(
                            message: "Please Select Currency",
                            type: ToastType.error,
                          );
                          return;
                        }

                        context.read<ExpenseBloc>().add(
                              ExpenseEvent.submitExpense(state.addExpenseModel),
                            );
                      },
                      height: 56.h,
                      borderRadius: 10,
                    ),
              verticalSpace(16),
            ],
          ),
        );
      },
    );
  }
}
