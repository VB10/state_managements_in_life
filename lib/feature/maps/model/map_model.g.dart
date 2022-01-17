// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapModel _$MapModelFromJson(Map<String, dynamic> json) => MapModel(
      country: json['country'] as String?,
      detail: json['detail'] == null
          ? null
          : Detail.fromJson(json['detail'] as Map<String, dynamic>),
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
    );

Detail _$DetailFromJson(Map<String, dynamic> json) => Detail(
      description: json['description'] as String?,
      name: json['name'] as String?,
      photoUrl: json['photoUrl'] as String?,
      status: json['status'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );
