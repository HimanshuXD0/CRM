import 'dart:convert';


import 'package:http/http.dart' as http;
import '../models/profilemodel.dart';

Profile profileobj = Profile();

Future<Profile> getprofileData() async {

    final url = Uri.parse('optimistic-brahmagupta.65-20-74-123.plesk.page/admin/profile');
      print(url);
    var response = await http.get(url);
     print(response);
    if (response.statusCode == 200) {
      print(response.statusCode);
    var json = jsonDecode(response.body);
      profileobj = Profile.fromJson(json);
      print(profileobj);   
  }  else {
      throw Exception('Failed to load data');
  }
     return profileobj;
  }