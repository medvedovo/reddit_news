// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_children_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsChildrenData _$NewsChildrenDataFromJson(Map<String, dynamic> json) {
  return _NewsChildrenData.fromJson(json);
}

/// @nodoc
mixin _$NewsChildrenData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get selftext => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsChildrenDataCopyWith<NewsChildrenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsChildrenDataCopyWith<$Res> {
  factory $NewsChildrenDataCopyWith(
          NewsChildrenData value, $Res Function(NewsChildrenData) then) =
      _$NewsChildrenDataCopyWithImpl<$Res, NewsChildrenData>;
  @useResult
  $Res call({String id, String title, String selftext, String thumbnail});
}

/// @nodoc
class _$NewsChildrenDataCopyWithImpl<$Res, $Val extends NewsChildrenData>
    implements $NewsChildrenDataCopyWith<$Res> {
  _$NewsChildrenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selftext = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selftext: null == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsChildrenDataCopyWith<$Res>
    implements $NewsChildrenDataCopyWith<$Res> {
  factory _$$_NewsChildrenDataCopyWith(
          _$_NewsChildrenData value, $Res Function(_$_NewsChildrenData) then) =
      __$$_NewsChildrenDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String selftext, String thumbnail});
}

/// @nodoc
class __$$_NewsChildrenDataCopyWithImpl<$Res>
    extends _$NewsChildrenDataCopyWithImpl<$Res, _$_NewsChildrenData>
    implements _$$_NewsChildrenDataCopyWith<$Res> {
  __$$_NewsChildrenDataCopyWithImpl(
      _$_NewsChildrenData _value, $Res Function(_$_NewsChildrenData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selftext = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_NewsChildrenData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selftext: null == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsChildrenData implements _NewsChildrenData {
  const _$_NewsChildrenData(
      {required this.id,
      required this.title,
      required this.selftext,
      required this.thumbnail});

  factory _$_NewsChildrenData.fromJson(Map<String, dynamic> json) =>
      _$$_NewsChildrenDataFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String selftext;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'NewsChildrenData(id: $id, title: $title, selftext: $selftext, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsChildrenData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, selftext, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsChildrenDataCopyWith<_$_NewsChildrenData> get copyWith =>
      __$$_NewsChildrenDataCopyWithImpl<_$_NewsChildrenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsChildrenDataToJson(
      this,
    );
  }
}

abstract class _NewsChildrenData implements NewsChildrenData {
  const factory _NewsChildrenData(
      {required final String id,
      required final String title,
      required final String selftext,
      required final String thumbnail}) = _$_NewsChildrenData;

  factory _NewsChildrenData.fromJson(Map<String, dynamic> json) =
      _$_NewsChildrenData.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get selftext;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_NewsChildrenDataCopyWith<_$_NewsChildrenData> get copyWith =>
      throw _privateConstructorUsedError;
}
