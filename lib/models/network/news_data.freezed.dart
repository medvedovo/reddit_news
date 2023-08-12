// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsData _$NewsDataFromJson(Map<String, dynamic> json) {
  return _NewsData.fromJson(json);
}

/// @nodoc
mixin _$NewsData {
  List<NewsChildren> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDataCopyWith<NewsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataCopyWith<$Res> {
  factory $NewsDataCopyWith(NewsData value, $Res Function(NewsData) then) =
      _$NewsDataCopyWithImpl<$Res, NewsData>;
  @useResult
  $Res call({List<NewsChildren> children});
}

/// @nodoc
class _$NewsDataCopyWithImpl<$Res, $Val extends NewsData>
    implements $NewsDataCopyWith<$Res> {
  _$NewsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<NewsChildren>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDataCopyWith<$Res> implements $NewsDataCopyWith<$Res> {
  factory _$$_NewsDataCopyWith(
          _$_NewsData value, $Res Function(_$_NewsData) then) =
      __$$_NewsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsChildren> children});
}

/// @nodoc
class __$$_NewsDataCopyWithImpl<$Res>
    extends _$NewsDataCopyWithImpl<$Res, _$_NewsData>
    implements _$$_NewsDataCopyWith<$Res> {
  __$$_NewsDataCopyWithImpl(
      _$_NewsData _value, $Res Function(_$_NewsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_NewsData(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<NewsChildren>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsData implements _NewsData {
  const _$_NewsData({required final List<NewsChildren> children})
      : _children = children;

  factory _$_NewsData.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDataFromJson(json);

  final List<NewsChildren> _children;
  @override
  List<NewsChildren> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'NewsData(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsData &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDataCopyWith<_$_NewsData> get copyWith =>
      __$$_NewsDataCopyWithImpl<_$_NewsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDataToJson(
      this,
    );
  }
}

abstract class _NewsData implements NewsData {
  const factory _NewsData({required final List<NewsChildren> children}) =
      _$_NewsData;

  factory _NewsData.fromJson(Map<String, dynamic> json) = _$_NewsData.fromJson;

  @override
  List<NewsChildren> get children;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDataCopyWith<_$_NewsData> get copyWith =>
      throw _privateConstructorUsedError;
}
