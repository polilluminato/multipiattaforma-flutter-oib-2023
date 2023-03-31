// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_src.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoSrc _$PhotoSrcFromJson(Map<String, dynamic> json) {
  return _PhotoSrc.fromJson(json);
}

/// @nodoc
mixin _$PhotoSrc {
  String? get original => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoSrcCopyWith<PhotoSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoSrcCopyWith<$Res> {
  factory $PhotoSrcCopyWith(PhotoSrc value, $Res Function(PhotoSrc) then) =
      _$PhotoSrcCopyWithImpl<$Res, PhotoSrc>;
  @useResult
  $Res call({String? original, String? small, String? medium, String? large});
}

/// @nodoc
class _$PhotoSrcCopyWithImpl<$Res, $Val extends PhotoSrc>
    implements $PhotoSrcCopyWith<$Res> {
  _$PhotoSrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotoSrcCopyWith<$Res> implements $PhotoSrcCopyWith<$Res> {
  factory _$$_PhotoSrcCopyWith(
          _$_PhotoSrc value, $Res Function(_$_PhotoSrc) then) =
      __$$_PhotoSrcCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? original, String? small, String? medium, String? large});
}

/// @nodoc
class __$$_PhotoSrcCopyWithImpl<$Res>
    extends _$PhotoSrcCopyWithImpl<$Res, _$_PhotoSrc>
    implements _$$_PhotoSrcCopyWith<$Res> {
  __$$_PhotoSrcCopyWithImpl(
      _$_PhotoSrc _value, $Res Function(_$_PhotoSrc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_$_PhotoSrc(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoSrc implements _PhotoSrc {
  const _$_PhotoSrc({this.original, this.small, this.medium, this.large});

  factory _$_PhotoSrc.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoSrcFromJson(json);

  @override
  final String? original;
  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;

  @override
  String toString() {
    return 'PhotoSrc(original: $original, small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoSrc &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoSrcCopyWith<_$_PhotoSrc> get copyWith =>
      __$$_PhotoSrcCopyWithImpl<_$_PhotoSrc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoSrcToJson(
      this,
    );
  }
}

abstract class _PhotoSrc implements PhotoSrc {
  const factory _PhotoSrc(
      {final String? original,
      final String? small,
      final String? medium,
      final String? large}) = _$_PhotoSrc;

  factory _PhotoSrc.fromJson(Map<String, dynamic> json) = _$_PhotoSrc.fromJson;

  @override
  String? get original;
  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoSrcCopyWith<_$_PhotoSrc> get copyWith =>
      throw _privateConstructorUsedError;
}
