import 'package:json_annotation/json_annotation.dart';

part 'homepage.g.dart';

@JsonSerializable(explicitToJson: true)
class Config {
  @JsonKey(ignore: true)
  String? id;
  String? pageName;

  Config({
    this.id,
    this.pageName,
  });
  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
