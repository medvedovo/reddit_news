// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEntry {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get selftext => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntryCopyWith<NewsEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntryCopyWith<$Res> {
  factory $NewsEntryCopyWith(NewsEntry value, $Res Function(NewsEntry) then) =
      _$NewsEntryCopyWithImpl<$Res, NewsEntry>;
  @useResult
  $Res call({String id, String title, String selftext, String thumbnail});
}

/// @nodoc
class _$NewsEntryCopyWithImpl<$Res, $Val extends NewsEntry>
    implements $NewsEntryCopyWith<$Res> {
  _$NewsEntryCopyWithImpl(this._value, this._then);

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
abstract class _$$_NewsEntryCopyWith<$Res> implements $NewsEntryCopyWith<$Res> {
  factory _$$_NewsEntryCopyWith(
          _$_NewsEntry value, $Res Function(_$_NewsEntry) then) =
      __$$_NewsEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String selftext, String thumbnail});
}

/// @nodoc
class __$$_NewsEntryCopyWithImpl<$Res>
    extends _$NewsEntryCopyWithImpl<$Res, _$_NewsEntry>
    implements _$$_NewsEntryCopyWith<$Res> {
  __$$_NewsEntryCopyWithImpl(
      _$_NewsEntry _value, $Res Function(_$_NewsEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selftext = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_NewsEntry(
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

class _$_NewsEntry implements _NewsEntry {
  const _$_NewsEntry(
      {required this.id,
      required this.title,
      required this.selftext,
      required this.thumbnail});

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
    return 'NewsEntry(id: $id, title: $title, selftext: $selftext, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, selftext, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsEntryCopyWith<_$_NewsEntry> get copyWith =>
      __$$_NewsEntryCopyWithImpl<_$_NewsEntry>(this, _$identity);
}

abstract class _NewsEntry implements NewsEntry {
  const factory _NewsEntry(
      {required final String id,
      required final String title,
      required final String selftext,
      required final String thumbnail}) = _$_NewsEntry;

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
  _$$_NewsEntryCopyWith<_$_NewsEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
