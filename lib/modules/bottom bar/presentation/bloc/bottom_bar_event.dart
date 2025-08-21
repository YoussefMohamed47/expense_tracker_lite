import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_event.freezed.dart';

@freezed
class BottomBarEvent with _$BottomBarEvent {
  const factory BottomBarEvent.indexChanged(int index) = IndexChanged;
}
