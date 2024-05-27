import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_process.freezed.dart';

@freezed
class DetailProcess with _$DetailProcess {
  factory DetailProcess.loading() = _Loading;
  factory DetailProcess.error() = _Error;
  factory DetailProcess.success() = _Success;
}
