class User {
  String? _email;
  String? _gender;
  String? _phoneNumber;
  int? _birthdate;
  Location? _location;
  String? _username;
  String? _password;
  String? _firstName;
  String? _lastName;
  String? _title;
  String? _picture;

  User(
      {String? email,
      String? gender,
      String? phoneNumber,
      int? birthdate,
      Location? location,
      String? username,
      String? password,
      String? firstName,
      String? lastName,
      String? title,
      String? picture}) {
    if (email != null) {
      this._email = email;
    }
    if (gender != null) {
      this._gender = gender;
    }
    if (phoneNumber != null) {
      this._phoneNumber = phoneNumber;
    }
    if (birthdate != null) {
      this._birthdate = birthdate;
    }
    if (location != null) {
      this._location = location;
    }
    if (username != null) {
      this._username = username;
    }
    if (password != null) {
      this._password = password;
    }
    if (firstName != null) {
      this._firstName = firstName;
    }
    if (lastName != null) {
      this._lastName = lastName;
    }
    if (title != null) {
      this._title = title;
    }
    if (picture != null) {
      this._picture = picture;
    }
  }

  String? get email => _email;
  set email(String? email) => _email = email;
  String? get gender => _gender;
  set gender(String? gender) => _gender = gender;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? phoneNumber) => _phoneNumber = phoneNumber;
  int? get birthdate => _birthdate;
  set birthdate(int? birthdate) => _birthdate = birthdate;
  Location? get location => _location;
  set location(Location? location) => _location = location;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get picture => _picture;
  set picture(String? picture) => _picture = picture;

  User.fromJson(Map<String, dynamic> json) {
    _email = json['email'];
    _gender = json['gender'];
    _phoneNumber = json['phone_number'];
    _birthdate = json['birthdate'];
    _location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    _username = json['username'];
    _password = json['password'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _title = json['title'];
    _picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this._email;
    data['gender'] = this._gender;
    data['phone_number'] = this._phoneNumber;
    data['birthdate'] = this._birthdate;
    if (this._location != null) {
      data['location'] = this._location!.toJson();
    }
    data['username'] = this._username;
    data['password'] = this._password;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['title'] = this._title;
    data['picture'] = this._picture;
    return data;
  }
}

class Location {
  String? _street;
  String? _city;
  String? _state;
  String? _postcode;

  Location({String? street, String? city, String? state, String? postcode}) {
    if (street != null) {
      this._street = street;
    }
    if (city != null) {
      this._city = city;
    }
    if (state != null) {
      this._state = state;
    }
    if (postcode != null) {
      this._postcode = postcode;
    }
  }

  String? get street => _street;
  set street(String? street) => _street = street;
  String? get city => _city;
  set city(String? city) => _city = city;
  String? get state => _state;
  set state(String? state) => _state = state;
  String? get postcode => _postcode;
  set postcode(String? postcode) => _postcode = postcode;

  Location.fromJson(Map<String, dynamic> json) {
    _street = json['street'];
    _city = json['city'];
    _state = json['state'];
    _postcode = json['postcode'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this._street;
    data['city'] = this._city;
    data['state'] = this._state;
    data['postcode'] = this._postcode;
    return data;
  }
}
