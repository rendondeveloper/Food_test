part of 'detail_bloc.dart';

@freezed
class DetailBlocEvent with _$DetailBlocEvent {
  const factory DetailBlocEvent.getDetail(String identifier) = _GetDetail;
  const factory DetailBlocEvent.setImageToolbar(String imageUrl) =
      _SetImageToolbar;
}
