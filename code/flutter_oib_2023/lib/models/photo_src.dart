import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_src.freezed.dart';
part 'photo_src.g.dart';

@freezed
class PhotoSrc with _$PhotoSrc {
  const factory PhotoSrc(
      {String? original,
      String? small,
      String? medium,
      String? large}) = _PhotoSrc;

  factory PhotoSrc.fromJson(Map<String, Object?> json) =>
      _$PhotoSrcFromJson(json);
}
