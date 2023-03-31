import 'package:flutter_oib_2023/models/photo_src.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo(
      {String? url, String? photographer, String? alt, PhotoSrc? src}) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}
