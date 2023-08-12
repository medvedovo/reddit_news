// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsContainer _$NewsContainerFromJson(Map<String, dynamic> json) {
  return _NewsContainer.fromJson(json);
}

/// @nodoc
mixin _$NewsContainer {
  String get kind => throw _privateConstructorUsedError;
  NewsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsContainerCopyWith<NewsContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsContainerCopyWith<$Res> {
  factory $NewsContainerCopyWith(
          NewsContainer value, $Res Function(NewsContainer) then) =
      _$NewsContainerCopyWithImpl<$Res, NewsContainer>;
  @useResult
  $Res call({String kind, NewsData data});

  $NewsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsContainerCopyWithImpl<$Res, $Val extends NewsContainer>
    implements $NewsContainerCopyWith<$Res> {
  _$NewsContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDataCopyWith<$Res> get data {
    return $NewsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsContainerCopyWith<$Res>
    implements $NewsContainerCopyWith<$Res> {
  factory _$$_NewsContainerCopyWith(
          _$_NewsContainer value, $Res Function(_$_NewsContainer) then) =
      __$$_NewsContainerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, NewsData data});

  @override
  $NewsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NewsContainerCopyWithImpl<$Res>
    extends _$NewsContainerCopyWithImpl<$Res, _$_NewsContainer>
    implements _$$_NewsContainerCopyWith<$Res> {
  __$$_NewsContainerCopyWithImpl(
      _$_NewsContainer _value, $Res Function(_$_NewsContainer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? data = null,
  }) {
    return _then(_$_NewsContainer(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsContainer implements _NewsContainer {
  const _$_NewsContainer({required this.kind, required this.data});

  factory _$_NewsContainer.fromJson(Map<String, dynamic> json) =>
      _$$_NewsContainerFromJson(json);

  @override
  final String kind;
  @override
  final NewsData data;

  @override
  String toString() {
    return 'NewsContainer(kind: $kind, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsContainer &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsContainerCopyWith<_$_NewsContainer> get copyWith =>
      __$$_NewsContainerCopyWithImpl<_$_NewsContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsContainerToJson(
      this,
    );
  }
}

abstract class _NewsContainer implements NewsContainer {
  const factory _NewsContainer(
      {required final String kind,
      required final NewsData data}) = _$_NewsContainer;

  factory _NewsContainer.fromJson(Map<String, dynamic> json) =
      _$_NewsContainer.fromJson;

  @override
  String get kind;
  @override
  NewsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_NewsContainerCopyWith<_$_NewsContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
