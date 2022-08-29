import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'company.dart';

part 'modelclass.g.dart';

@JsonSerializable()
class Modelclass {
   @JsonKey(name: 'id')
  int? id;
   @JsonKey(name: 'name')
  String? name;
   @JsonKey(name: 'username')
  String? username;
   @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'profile_image')
  String? profileImage;
   @JsonKey(name: 'address')
  Address? address;
   @JsonKey(name: 'phone')
  dynamic phone;
   @JsonKey(name: 'website')
  String? website;
   @JsonKey(name: 'company')
  Company? company;

  Modelclass({
    this.id,
    this.name,
    this.username,
    this.email,
    this.profileImage,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory Modelclass.fromJson(Map<String, dynamic> json) {
    return _$ModelclassFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ModelclassToJson(this);
}
