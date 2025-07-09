import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/plans/logic/plans_state.dart';

import '../data/repos/plans_repo.dart';

class PlansCubit extends Cubit<PlansState> {
  final PlansRepo _planRepo;

  PlansCubit(this._planRepo) : super(const PlansState.plansStateInitial());

  void getPlans() async {
    emit(const PlansState.plansStateLoading());
    final response = await _planRepo.getPlans();
    response.when(
      success: (plansResponse) {
        emit(PlansState.plansStateSuccess(plansResponse));
      },
      failure: (error) {
        emit(PlansState.plansStateError(error));
      },
    );
  }
}
