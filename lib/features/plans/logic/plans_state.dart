import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_state.freezed.dart';

@freezed
class PlansState<T> with _$PlansState<T> {
  const factory PlansState.plansStateInitial() = _PlansStateInitial;
  const factory PlansState.plansStateLoading() = PlansStateLoading;
  const factory PlansState.plansStateSuccess(T data) = PlansStateSuccess<T>;
  const factory PlansState.plansStateError(String error) = PlansStateError;
}
