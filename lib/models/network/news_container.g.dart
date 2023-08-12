// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsContainer _$$_NewsContainerFromJson(Map<String, dynamic> json) =>
    _$_NewsContainer(
      kind: json['kind'] as String,
      data: NewsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsContainerToJson(_$_NewsContainer instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
