import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_status.freezed.dart';

@freezed
class DetailStatus with _$DetailStatus {
  factory DetailStatus.loading() = _Loading;
  factory DetailStatus.empty() = _Empty;
  factory DetailStatus.success() = _Success;
  factory DetailStatus.errorInternet() = _ErrorInternet;
}
