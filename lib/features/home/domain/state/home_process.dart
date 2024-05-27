import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_process.freezed.dart';

@freezed
class HomeProcess with _$HomeProcess {
  factory HomeProcess.loading() = _Loading;
  factory HomeProcess.emptyState() = _EmptyState;
  factory HomeProcess.error() = _Error;
  factory HomeProcess.success() = _Success;
}
