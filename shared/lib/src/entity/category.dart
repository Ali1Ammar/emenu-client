


import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';


@JsonSerializable()
class MainCategory {
  final int id;
  final String title;
  final String desc;
  final String img;
  final int resturantId;
  final List<SubCategory> children;
  MainCategory(this.id, this.title, this.desc, this.img, this.resturantId, this.children);

  factory MainCategory.fromJson(Map<String, dynamic> json) => _$MainCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$MainCategoryToJson(this);
}


@JsonSerializable()
class SubCategory {
  final int id;
  final String title;
  final int mainCategoryId;
  SubCategory(this.id, this.title, this.mainCategoryId);

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}
