import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/burn_scan/data/repos/burn_scan_repo.dart';
import 'package:nexus/features/burn_scan/logic/burn_scan_state.dart';

class BurnScanCubit extends Cubit<BurnScanState> {
  final BurnScanRepo _burnScanRepo;
  BurnScanCubit(this._burnScanRepo)
      : super(const BurnScanState.burnScanInitial());
  void analyzeBurn(File image) async {
    emit(const BurnScanState.burnScanLoading());
    final result = await _burnScanRepo.analyzeBurn(image);
    result.when(
      success: (burnAnalysisResponse) {
        emit(BurnScanState.burnScanSuccess(burnAnalysisResponse));
      },
      failure: (error) {
        emit(BurnScanState.burnScanError(error));
      },
    );
  }
}
