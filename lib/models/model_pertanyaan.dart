class PertanyaanUser {
  String? accessToken;
  String? tokenType;
  Pertanyaan? pertanyaan;

  PertanyaanUser({this.accessToken, this.tokenType, this.pertanyaan});

  PertanyaanUser.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    pertanyaan = json['pertanyaan'] != null
        ? Pertanyaan.fromJson(json['pertanyaan'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    if (pertanyaan != null) {
      data['user'] = pertanyaan!.toJson();
    }
    return data;
  }
}

class Pertanyaan {
  late final String? no;
  late final String? user_no;
  late final String? community_no;
  late final String? jumlah_anak;
  late final String? pekerjaan;
  late final String? kehamilan;
  late final String? createdat;
  late final String? updatedat;
  late final String? deletedat;

  Pertanyaan(
      {this.no,
      this.user_no,
      this.community_no,
      this.jumlah_anak,
      this.pekerjaan,
      this.kehamilan,
      this.createdat,
      this.updatedat,
      this.deletedat});

  Pertanyaan.fromJson(Map<String, dynamic> json) {
    no = json['no'];
    user_no = json['user_no'];
    community_no = json['community_no'];
    jumlah_anak = json['jumlah_anak'];
    pekerjaan = json['pekerjaan'];
    kehamilan = json['kehamilan'];
    createdat = json['createdat'];
    updatedat = json['updatedat'];
    deletedat = json['deletedat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['no'] = no;
    data['user_no'] = user_no;
    data['community_no'] = community_no;
    data['jumlah_anak'] = jumlah_anak;
    data['pekerjaan'] = pekerjaan;
    data['kehamilan'] = kehamilan;
    data['createdat'] = createdat;
    data['updatedat'] = updatedat;
    data['deletedat'] = deletedat;
    return data;
  }
}
