class cricketerModelClass {
  String? name;
  String? state;
  String? gender;
  String? dob;
  String? userimage;
  String? country;

  cricketerModelClass(
      {this.name,
      this.state,
      this.gender,
      this.dob,
      this.userimage,
      this.country});

  cricketerModelClass.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    state = json['state'];
    gender = json['gender'];
    dob = json['dob'];
    userimage = json['userimage'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['state'] = this.state;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['userimage'] = this.userimage;
    data['country'] = this.country;
    return data;
  }
}
