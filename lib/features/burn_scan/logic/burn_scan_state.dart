import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexus/features/burn_scan/data/models/burn_analysis_response_model.dart';
part 'burn_scan_state.freezed.dart';

@freezed
class BurnScanState<T> with _$BurnScanState<T> {
  const factory BurnScanState.burnScanInitial() = _burnScanInitial;
  const factory BurnScanState.burnScanLoading() = burnScanLoading;
  const factory BurnScanState.burnScanSuccess(
      BurnAnalysisResponseModel response) = burnScanSuccess;
  const factory BurnScanState.burnScanError(String error) = burnScanError;
}
