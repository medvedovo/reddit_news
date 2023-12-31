// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reddit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RedditResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  List<NewsEntry>? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedditResponseCopyWith<RedditResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditResponseCopyWith<$Res> {
  factory $RedditResponseCopyWith(
          RedditResponse value, $Res Function(RedditResponse) then) =
      _$RedditResponseCopyWithImpl<$Res, RedditResponse>;
  @useResult
  $Res call({bool isSuccess, List<NewsEntry>? data, String? error});
}

/// @nodoc
class _$RedditResponseCopyWithImpl<$Res, $Val extends RedditResponse>
    implements $RedditResponseCopyWith<$Res> {
  _$RedditResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsEntry>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedditResponseCopyWith<$Res>
    implements $RedditResponseCopyWith<$Res> {
  factory _$$_RedditResponseCopyWith(
          _$_RedditResponse value, $Res Function(_$_RedditResponse) then) =
      __$$_RedditResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, List<NewsEntry>? data, String? error});
}

/// @nodoc
class __$$_RedditResponseCopyWithImpl<$Res>
    extends _$RedditResponseCopyWithImpl<$Res, _$_RedditResponse>
    implements _$$_RedditResponseCopyWith<$Res> {
  __$$_RedditResponseCopyWithImpl(
      _$_RedditResponse _value, $Res Function(_$_RedditResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_RedditResponse(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsEntry>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RedditResponse implements _RedditResponse {
  const _$_RedditResponse(
      {required this.isSuccess, final List<NewsEntry>? data, this.error})
      : _data = data;

  @override
  final bool isSuccess;
  final List<NewsEntry>? _data;
  @override
  List<NewsEntry>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'RedditResponse(isSuccess: $isSuccess, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedditResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess,
      const DeepCollectionEquality().hash(_data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedditResponseCopyWith<_$_RedditResponse> get copyWith =>
      __$$_RedditResponseCopyWithImpl<_$_RedditResponse>(this, _$identity);
}

abstract class _RedditResponse implements RedditResponse {
  const factory _RedditResponse(
      {required final bool isSuccess,
      final List<NewsEntry>? data,
      final String? error}) = _$_RedditResponse;

  @override
  bool get isSuccess;
  @override
  List<NewsEntry>? get data;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_RedditResponseCopyWith<_$_RedditResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
