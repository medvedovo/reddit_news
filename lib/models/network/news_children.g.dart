// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_children.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsChildren _$$_NewsChildrenFromJson(Map<String, dynamic> json) =>
    _$_NewsChildren(
      kind: json['kind'] as String,
      data: NewsChildrenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsChildrenToJson(_$_NewsChildren instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
