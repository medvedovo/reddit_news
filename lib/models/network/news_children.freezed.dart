// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_children.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsChildren _$NewsChildrenFromJson(Map<String, dynamic> json) {
  return _NewsChildren.fromJson(json);
}

/// @nodoc
mixin _$NewsChildren {
  String get kind => throw _privateConstructorUsedError;
  NewsChildrenData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsChildrenCopyWith<NewsChildren> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsChildrenCopyWith<$Res> {
  factory $NewsChildrenCopyWith(
          NewsChildren value, $Res Function(NewsChildren) then) =
      _$NewsChildrenCopyWithImpl<$Res, NewsChildren>;
  @useResult
  $Res call({String kind, NewsChildrenData data});

  $NewsChildrenDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsChildrenCopyWithImpl<$Res, $Val extends NewsChildren>
    implements $NewsChildrenCopyWith<$Res> {
  _$NewsChildrenCopyWithImpl(this._value, this._then);

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
              as NewsChildrenData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsChildrenDataCopyWith<$Res> get data {
    return $NewsChildrenDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsChildrenCopyWith<$Res>
    implements $NewsChildrenCopyWith<$Res> {
  factory _$$_NewsChildrenCopyWith(
          _$_NewsChildren value, $Res Function(_$_NewsChildren) then) =
      __$$_NewsChildrenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, NewsChildrenData data});

  @override
  $NewsChildrenDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NewsChildrenCopyWithImpl<$Res>
    extends _$NewsChildrenCopyWithImpl<$Res, _$_NewsChildren>
    implements _$$_NewsChildrenCopyWith<$Res> {
  __$$_NewsChildrenCopyWithImpl(
      _$_NewsChildren _value, $Res Function(_$_NewsChildren) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? data = null,
  }) {
    return _then(_$_NewsChildren(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsChildrenData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsChildren implements _NewsChildren {
  const _$_NewsChildren({required this.kind, required this.data});

  factory _$_NewsChildren.fromJson(Map<String, dynamic> json) =>
      _$$_NewsChildrenFromJson(json);

  @override
  final String kind;
  @override
  final NewsChildrenData data;

  @override
  String toString() {
    return 'NewsChildren(kind: $kind, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsChildren &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsChildrenCopyWith<_$_NewsChildren> get copyWith =>
      __$$_NewsChildrenCopyWithImpl<_$_NewsChildren>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsChildrenToJson(
      this,
    );
  }
}

abstract class _NewsChildren implements NewsChildren {
  const factory _NewsChildren(
      {required final String kind,
      required final NewsChildrenData data}) = _$_NewsChildren;

  factory _NewsChildren.fromJson(Map<String, dynamic> json) =
      _$_NewsChildren.fromJson;

  @override
  String get kind;
  @override
  NewsChildrenData get data;
  @override
  @JsonKey(ignore: true)
  _$$_NewsChildrenCopyWith<_$_NewsChildren> get copyWith =>
      throw _privateConstructorUsedError;
}
