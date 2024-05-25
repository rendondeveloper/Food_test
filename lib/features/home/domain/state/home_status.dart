import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_status.freezed.dart';

@freezed
class HomeStatus with _$HomeStatus {
  factory HomeStatus.loading() = _Loading;
  factory HomeStatus.empty() = _Empty;
  factory HomeStatus.success() = _Success;
  factory HomeStatus.errorInternet() = _ErrorInternet;
}
