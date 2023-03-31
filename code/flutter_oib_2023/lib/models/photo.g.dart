// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      url: json['url'] as String?,
      photographer: json['photographer'] as String?,
      alt: json['alt'] as String?,
      src: json['src'] == null
          ? null
          : PhotoSrc.fromJson(json['src'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'url': instance.url,
      'photographer': instance.photographer,
      'alt': instance.alt,
      'src': instance.src,
    };
