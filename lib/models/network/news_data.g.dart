// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsData _$$_NewsDataFromJson(Map<String, dynamic> json) => _$_NewsData(
      children: (json['children'] as List<dynamic>)
          .map((e) => NewsChildren.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsDataToJson(_$_NewsData instance) =>
    <String, dynamic>{
      'children': instance.children,
    };
