// class MainUserModel {
//     MainUserModel({
//         this.email,
//         this.gender,
//         this.phoneNumber,
//         this.birthdate,
//         this.location,
//         this.username,
//         this.password,
//         this.firstName,
//         this.lastName,
//         this.title,
//         this.picture,
//     });

//     String? email;
//     String? gender;
//     String? phoneNumber;
//     String? birthdate;
//     Location? location;
//     String? username;
//     String? password;
//     String? firstName;
//     String? lastName;
//     String? title;
//     String? picture;

//     factory MainUserModel.fromJson(Map<String, dynamic> json) => MainUserModel(
//         email: json["email"],
//         gender: json["gender"],
//         phoneNumber: json["phone_number"],
//         birthdate: json["birthdate"],
//         location: Location.fromJson(json["location"]),
//         username: json["username"],
//         password: json["password"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         title: json["title"],
//         picture: json["picture"],
//     );

// }

// class Location {
//     Location({
//         this.street,
//         this.city,
//         this.state,
//         this.postcode,
//     });

//     String? street;
//     String? city;
//     String? state;
//     String? postcode;

//     factory Location.fromJson(Map<String, dynamic> json) => Location(
//         street: json["street"],
//         city: json["city"],
//         state: json["state"],
//         postcode: json["postcode"].toString(),
//     );

// }

class MainUserModel {
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

  MainUserModel(
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

  MainUserModel.fromJson(Map<String, dynamic> json) {
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
}
