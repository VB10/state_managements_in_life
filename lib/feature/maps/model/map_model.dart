import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'map_model.g.dart';

@JsonSerializable(createToJson: false)
class MapModel extends INetworkModel<MapModel> {
  String? country;
  Detail? detail;
  double? lat;
  double? long;

  LatLng get latlong => LatLng(lat ?? 0, long ?? 0);

  MapModel({this.country, this.detail, this.lat, this.long});

  factory MapModel.fromJson(Map<String, dynamic> json) {
    return _$MapModelFromJson(json);
  }

  @override
  MapModel fromJson(Map<String, dynamic> json) {
    return _$MapModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}

@JsonSerializable(createToJson: false)
class Detail {
  String? description;
  String? name;
  String? photoUrl;
  String? status;
  List<Tags>? tags;

  Detail({this.description, this.name, this.photoUrl, this.status, this.tags});

  factory Detail.fromJson(Map<String, dynamic> json) {
    return _$DetailFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Tags {
  int? id;
  String? name;

  Tags({this.id, this.name});

  factory Tags.fromJson(Map<String, dynamic> json) {
    return _$TagsFromJson(json);
  }
}
