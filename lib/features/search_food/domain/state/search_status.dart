import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_status.freezed.dart';

@freezed
class SearchStatus with _$SearchStatus {
  factory SearchStatus.nothing() = _Nothing;
  factory SearchStatus.loading() = _Loading;
  factory SearchStatus.empty() = _Empty;
  factory SearchStatus.error() = _Error;
  factory SearchStatus.success() = _Success;
}
