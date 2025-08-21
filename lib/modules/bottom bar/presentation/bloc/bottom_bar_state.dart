import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_state.freezed.dart';

@freezed
class BottomBarState with _$BottomBarState {
  const factory BottomBarState.initial([@Default(0) int index]) = _Initial;

  const factory BottomBarState.updated(int selectedIndex) = _Updated;
}
