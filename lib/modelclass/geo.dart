import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
