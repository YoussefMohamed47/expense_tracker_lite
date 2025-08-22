import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_state.freezed.dart';

@freezed
class BottomBarState with _$BottomBarState {
  const factory BottomBarState({
    @Default(0) int currentIndex,
  }) = _BottomBarState;
}
