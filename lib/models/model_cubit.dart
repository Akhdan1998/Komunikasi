class CommunityGroup {
  int? id;
  String? userId;
  String? community_id;
  String? title;
  String? desc;
  String? url_whatsapp;
  String? is_full;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;

  CommunityGroup(
      {this.id,
      this.userId,
      this.community_id,
      this.title,
      this.desc,
      this.url_whatsapp,
      this.is_full,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  CommunityGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    community_id = json['community_id'];
    title = json['title'];
    desc = json['desc'];
    url_whatsapp = json['url_whatsapp'];
    is_full = json['is_full'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
}
