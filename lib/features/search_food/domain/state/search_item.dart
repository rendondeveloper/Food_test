import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_item.freezed.dart';

@freezed
class SearchItem with _$SearchItem {
  const factory SearchItem({
    @Default(null) String? identifier,
    @Default(null) String? name,
    @Default(null) String? imageUrl,
  }) = _SearchItem;

  const SearchItem._();
}
