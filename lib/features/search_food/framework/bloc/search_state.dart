part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(null) SearchStatus? status,
    @Default(null) List<SearchItem>? results,
  }) = _SearchState;

  const SearchState._();
}
