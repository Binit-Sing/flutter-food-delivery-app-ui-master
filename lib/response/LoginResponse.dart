class LoginResponse {
  int statusCode;
  Data data;
  String message;

  LoginResponse({this.statusCode, this.data, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String sId;
  UserNotifications userNotifications;
  Null otp;
  int verification;
  String phone;
  String address;
  String address2;
  String city;
  String state;
  String country;
  String zip;
  String vehicleType;
  String vehicleYear;
  String color;
  String vehicleNo;
  String licenseNo;
  String insuranceNo;
  bool isActive;
  int role;
  String profileImage;
  String legalDocument;
  String socialType;
  String socialId;
  bool isLogin;
  bool isDeleted;
  String description;
  List<Null> permissionIds;
  String stripeId;
  String stripeAccountDetails;
  String accountDisabledReason;
  bool isBankAccount;
  bool isPushNotification;
  String deviceID;
  String deviceToken;
  String firstname;
  String lastname;
  String email;
  String password;
  String createdAt;
  List<Null> addresses;
  List<Null> cards;
  String lastLogin;
  int iV;
  Null userFiles;
  String token;

  Data(
      {this.sId,
        this.userNotifications,
        this.otp,
        this.verification,
        this.phone,
        this.address,
        this.address2,
        this.city,
        this.state,
        this.country,
        this.zip,
        this.vehicleType,
        this.vehicleYear,
        this.color,
        this.vehicleNo,
        this.licenseNo,
        this.insuranceNo,
        this.isActive,
        this.role,
        this.profileImage,
        this.legalDocument,
        this.socialType,
        this.socialId,
        this.isLogin,
        this.isDeleted,
        this.description,
        this.permissionIds,
        this.stripeId,
        this.stripeAccountDetails,
        this.accountDisabledReason,
        this.isBankAccount,
        this.isPushNotification,
        this.deviceID,
        this.deviceToken,
        this.firstname,
        this.lastname,
        this.email,
        this.password,
        this.createdAt,
        this.addresses,
        this.cards,
        this.lastLogin,
        this.iV,
        this.userFiles,
        this.token});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userNotifications = json['userNotifications'] != null
        ? new UserNotifications.fromJson(json['userNotifications'])
        : null;
    otp = json['otp'];
    verification = json['verification'];
    phone = json['phone'];
    address = json['address'];
    address2 = json['address2'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zip = json['zip'];
    vehicleType = json['vehicleType'];
    vehicleYear = json['vehicleYear'];
    color = json['color'];
    vehicleNo = json['vehicleNo'];
    licenseNo = json['licenseNo'];
    insuranceNo = json['insuranceNo'];
    isActive = json['isActive'];
    role = json['role'];
    profileImage = json['profile_image'];
    legalDocument = json['legal_document'];
    socialType = json['socialType'];
    socialId = json['socialId'];
    isLogin = json['isLogin'];
    isDeleted = json['isDeleted'];
    description = json['description'];
   /* if (json['permissionIds'] != null) {
      permissionIds = new List<Null>();
      json['permissionIds'].forEach((v) {
        permissionIds.add(new Null.fromJson(v));
      });
    }*/
    stripeId = json['stripeId'];
    stripeAccountDetails = json['stripeAccountDetails'];
    accountDisabledReason = json['accountDisabledReason'];
    isBankAccount = json['isBankAccount'];
    isPushNotification = json['isPushNotification'];
    deviceID = json['deviceID'];
    deviceToken = json['deviceToken'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
    createdAt = json['created_at'];
   /* if (json['addresses'] != null) {
      addresses = new List<Null>();
      json['addresses'].forEach((v) {
        addresses.add(new Null.fromJson(v));
      });
    }
    if (json['cards'] != null) {
      cards = new List<Null>();
      json['cards'].forEach((v) {
        cards.add(new Null.fromJson(v));
      });
    }*/
    lastLogin = json['lastLogin'];
    iV = json['__v'];
    userFiles = json['userFiles'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.userNotifications != null) {
      data['userNotifications'] = this.userNotifications.toJson();
    }
    data['otp'] = this.otp;
    data['verification'] = this.verification;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['address2'] = this.address2;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['zip'] = this.zip;
    data['vehicleType'] = this.vehicleType;
    data['vehicleYear'] = this.vehicleYear;
    data['color'] = this.color;
    data['vehicleNo'] = this.vehicleNo;
    data['licenseNo'] = this.licenseNo;
    data['insuranceNo'] = this.insuranceNo;
    data['isActive'] = this.isActive;
    data['role'] = this.role;
    data['profile_image'] = this.profileImage;
    data['legal_document'] = this.legalDocument;
    data['socialType'] = this.socialType;
    data['socialId'] = this.socialId;
    data['isLogin'] = this.isLogin;
    data['isDeleted'] = this.isDeleted;
    data['description'] = this.description;
  /*  if (this.permissionIds != null) {
      data['permissionIds'] =
          this.permissionIds.map((v) => v.toJson()).toList();
    }*/
    data['stripeId'] = this.stripeId;
    data['stripeAccountDetails'] = this.stripeAccountDetails;
    data['accountDisabledReason'] = this.accountDisabledReason;
    data['isBankAccount'] = this.isBankAccount;
    data['isPushNotification'] = this.isPushNotification;
    data['deviceID'] = this.deviceID;
    data['deviceToken'] = this.deviceToken;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['password'] = this.password;
    data['created_at'] = this.createdAt;
   /* if (this.addresses != null) {
      data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
    }
    if (this.cards != null) {
      data['cards'] = this.cards.map((v) => v.toJson()).toList();
    }*/
    data['lastLogin'] = this.lastLogin;
    data['__v'] = this.iV;
    data['userFiles'] = this.userFiles;
    data['token'] = this.token;
    return data;
  }
}

class UserNotifications {
  bool newOrder;
  bool cancelledOrder;
  bool orderReady;
  bool driverHere;
  bool newMessage;

  UserNotifications(
      {this.newOrder,
        this.cancelledOrder,
        this.orderReady,
        this.driverHere,
        this.newMessage});

  UserNotifications.fromJson(Map<String, dynamic> json) {
    newOrder = json['newOrder'];
    cancelledOrder = json['cancelledOrder'];
    orderReady = json['orderReady'];
    driverHere = json['driverHere'];
    newMessage = json['newMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['newOrder'] = this.newOrder;
    data['cancelledOrder'] = this.cancelledOrder;
    data['orderReady'] = this.orderReady;
    data['driverHere'] = this.driverHere;
    data['newMessage'] = this.newMessage;
    return data;
  }
}
