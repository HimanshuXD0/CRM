class Profile {
  int? status;
  String? message;
  List<Data>? data;

  Profile({this.status, this.message, this.data});

  Profile.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? staffid;
  String? email;
  String? firstname;
  String? lastname;
  String? facebook;
  String? linkedin;
  String? phonenumber;
  String? skype;
  String? password;
  String? datecreated;
  String? profileImage;
  String? defaultLanguage;

  Data(
      {this.staffid,
      this.email,
      this.firstname,
      this.lastname,
      this.facebook,
      this.linkedin,
      this.phonenumber,
      this.skype,
      this.password,
      this.datecreated,
      this.profileImage,
      this.defaultLanguage});

  Data.fromJson(Map<String, dynamic> json) {
    staffid = json['staffid'];
    email = json['email'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    facebook = json['facebook'];
    linkedin = json['linkedin'];
    phonenumber = json['phonenumber'];
    skype = json['skype'];
    password = json['password'];
    datecreated = json['datecreated'];
    profileImage = json['profile_image'];
    defaultLanguage = json['default_language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['staffid'] = this.staffid;
    data['email'] = this.email;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['facebook'] = this.facebook;
    data['linkedin'] = this.linkedin;
    data['phonenumber'] = this.phonenumber;
    data['skype'] = this.skype;
    data['password'] = this.password;
    data['datecreated'] = this.datecreated;
    data['profile_image'] = this.profileImage;
    data['default_language'] = this.defaultLanguage;
    return data;
  }
}