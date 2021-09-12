// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  UserData data;
  String message;

  factory User.fromJson(Map<String, dynamic> json) => User(
    success: json["success"] == null ? null : json["success"],
    data: json["data"] == null ? null : UserData.fromJson(json["data"]),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "data": data == null ? null : data.toJson(),
    "message": message == null ? null : message,
  };
}

class UserData {
  UserData({
    this.id,
    this.name,
    this.email,
    this.apiToken,
    this.deviceToken,
    this.stripeId,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    this.braintreeId,
    this.points,
    this.dropPoints,
    this.allPoints,
    this.share,
    this.paypalEmail,
    this.createdAt,
    this.updatedAt,
    this.language,
    this.emailVerifiedAt,
    this.customFields,
    this.hasMedia,
    this.media,
  });

  int id;
  String name;
  String email;
  String apiToken;
  String deviceToken;
  dynamic stripeId;
  dynamic cardBrand;
  dynamic cardLastFour;
  dynamic trialEndsAt;
  dynamic braintreeId;
  String points;
  int dropPoints;
  int allPoints;
  dynamic share;
  dynamic paypalEmail;
  DateTime createdAt;
  DateTime updatedAt;
  String language;
  dynamic emailVerifiedAt;
  Map<String, CustomField> customFields;
  bool hasMedia;
  List<Media> media;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    apiToken: json["api_token"] == null ? null : json["api_token"],
    deviceToken: json["device_token"] == null ? null : json["device_token"],
    stripeId: json["stripe_id"],
    cardBrand: json["card_brand"],
    cardLastFour: json["card_last_four"],
    trialEndsAt: json["trial_ends_at"],
    braintreeId: json["braintree_id"],
    points: json["points"] == null ? null : json["points"],
    dropPoints: json["drop_points"] == null ? null : json["drop_points"],
    allPoints: json["all_points"] == null ? null : json["all_points"],
    share: json["share"],
    paypalEmail: json["paypal_email"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    language: json["language"] == null ? null : json["language"],
    emailVerifiedAt: json["email_verified_at"],
    customFields: json["custom_fields"] == null ? null : Map.from(json["custom_fields"]).map((k, v) => MapEntry<String, CustomField>(k, CustomField.fromJson(v))),
    hasMedia: json["has_media"] == null ? null : json["has_media"],
    media: json["media"] == null ? null : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "api_token": apiToken == null ? null : apiToken,
    "device_token": deviceToken == null ? null : deviceToken,
    "stripe_id": stripeId,
    "card_brand": cardBrand,
    "card_last_four": cardLastFour,
    "trial_ends_at": trialEndsAt,
    "braintree_id": braintreeId,
    "points": points == null ? null : points,
    "drop_points": dropPoints == null ? null : dropPoints,
    "all_points": allPoints == null ? null : allPoints,
    "share": share,
    "paypal_email": paypalEmail,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "language": language == null ? null : language,
    "email_verified_at": emailVerifiedAt,
    "custom_fields": customFields == null ? null : Map.from(customFields).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "has_media": hasMedia == null ? null : hasMedia,
    "media": media == null ? null : List<dynamic>.from(media.map((x) => x.toJson())),
  };
}

class CustomField {
  CustomField({
    this.value,
    this.view,
    this.name,
  });

  String value;
  String view;
  String name;

  factory CustomField.fromJson(Map<String, dynamic> json) => CustomField(
    value: json["value"] == null ? null : json["value"],
    view: json["view"] == null ? null : json["view"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
    "view": view == null ? null : view,
    "name": name == null ? null : name,
  };
}

class Media {
  Media({
    this.id,
    this.modelType,
    this.modelId,
    this.collectionName,
    this.name,
    this.fileName,
    this.mimeType,
    this.disk,
    this.size,
    this.manipulations,
    this.customProperties,
    this.responsiveImages,
    this.orderColumn,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.thumb,
    this.icon,
    this.formatedSize,
  });

  int id;
  String modelType;
  int modelId;
  String collectionName;
  String name;
  String fileName;
  String mimeType;
  String disk;
  int size;
  List<dynamic> manipulations;
  CustomProperties customProperties;
  List<dynamic> responsiveImages;
  int orderColumn;
  DateTime createdAt;
  DateTime updatedAt;
  String url;
  String thumb;
  String icon;
  String formatedSize;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    id: json["id"] == null ? null : json["id"],
    modelType: json["model_type"] == null ? null : json["model_type"],
    modelId: json["model_id"] == null ? null : json["model_id"],
    collectionName: json["collection_name"] == null ? null : json["collection_name"],
    name: json["name"] == null ? null : json["name"],
    fileName: json["file_name"] == null ? null : json["file_name"],
    mimeType: json["mime_type"] == null ? null : json["mime_type"],
    disk: json["disk"] == null ? null : json["disk"],
    size: json["size"] == null ? null : json["size"],
    manipulations: json["manipulations"] == null ? null : List<dynamic>.from(json["manipulations"].map((x) => x)),
    customProperties: json["custom_properties"] == null ? null : CustomProperties.fromJson(json["custom_properties"]),
    responsiveImages: json["responsive_images"] == null ? null : List<dynamic>.from(json["responsive_images"].map((x) => x)),
    orderColumn: json["order_column"] == null ? null : json["order_column"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    url: json["url"] == null ? null : json["url"],
    thumb: json["thumb"] == null ? null : json["thumb"],
    icon: json["icon"] == null ? null : json["icon"],
    formatedSize: json["formated_size"] == null ? null : json["formated_size"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "model_type": modelType == null ? null : modelType,
    "model_id": modelId == null ? null : modelId,
    "collection_name": collectionName == null ? null : collectionName,
    "name": name == null ? null : name,
    "file_name": fileName == null ? null : fileName,
    "mime_type": mimeType == null ? null : mimeType,
    "disk": disk == null ? null : disk,
    "size": size == null ? null : size,
    "manipulations": manipulations == null ? null : List<dynamic>.from(manipulations.map((x) => x)),
    "custom_properties": customProperties == null ? null : customProperties.toJson(),
    "responsive_images": responsiveImages == null ? null : List<dynamic>.from(responsiveImages.map((x) => x)),
    "order_column": orderColumn == null ? null : orderColumn,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "url": url == null ? null : url,
    "thumb": thumb == null ? null : thumb,
    "icon": icon == null ? null : icon,
    "formated_size": formatedSize == null ? null : formatedSize,
  };
}

class CustomProperties {
  CustomProperties({
    this.uuid,
    this.userId,
    this.generatedConversions,
  });

  String uuid;
  int userId;
  GeneratedConversions generatedConversions;

  factory CustomProperties.fromJson(Map<String, dynamic> json) => CustomProperties(
    uuid: json["uuid"] == null ? null : json["uuid"],
    userId: json["user_id"] == null ? null : json["user_id"],
    generatedConversions: json["generated_conversions"] == null ? null : GeneratedConversions.fromJson(json["generated_conversions"]),
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid == null ? null : uuid,
    "user_id": userId == null ? null : userId,
    "generated_conversions": generatedConversions == null ? null : generatedConversions.toJson(),
  };
}

class GeneratedConversions {
  GeneratedConversions({
    this.thumb,
    this.icon,
  });

  bool thumb;
  bool icon;

  factory GeneratedConversions.fromJson(Map<String, dynamic> json) => GeneratedConversions(
    thumb: json["thumb"] == null ? null : json["thumb"],
    icon: json["icon"] == null ? null : json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "thumb": thumb == null ? null : thumb,
    "icon": icon == null ? null : icon,
  };
}
