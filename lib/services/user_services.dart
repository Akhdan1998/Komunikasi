import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/api_return_velue.dart';
import '../models/model_cubit.dart';

String baseUrl =
    'https://dashboard.parentoday.com/api/community/group?community_id=';

class UserServices {
  static Future<ApiReturnValue<List<CommunityGroup>>?> getProfile(
      String token, String community_id,
      {http.Client? client}) async {
    if (client == null) {
      client = http.Client();
    }
    String url = baseUrl + community_id;

    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 1178|NLb4RAnT2mUgRP9L5aArh9FQ4ECWGiWsRlujOprZ'
    });
    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try Again');
    }
    var data = jsonDecode(response.body);
//jika backand berbentuk list
    List<CommunityGroup> value = (data['data'] as Iterable)
        .map((e) => CommunityGroup.fromJson(e))
        .toList();
//jika backand tidak berbentuk list
    //CommunityGroup value1 = CommunityGroup.fromJson(data['data']);
    return ApiReturnValue(value: value);
  }
}
