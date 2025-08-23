import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.expandTotalBalanceCard(bool isExpanded) =
      ExpandTotalBalanceCard;

  const factory HomeEvent.getExpenses() = GetExpenses;

  const factory HomeEvent.loadNextPage() = LoadNextPage;

  const factory HomeEvent.changeFilterType(
    String filterType,
  ) = ChangeFilterType;
}
