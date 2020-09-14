class LoginResponse {
  final int statusCode;
  final String message;
  //final LoginData data;

  LoginResponse({this.statusCode, this.message /*this.data*/});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
        statusCode: json['statusCode'], message: json['message']/*data: LoginData()*/);
  }

  // Override toString to have a beautiful log of student object
  @override
  String toString() {
    return 'LoginResponse: {statusCode = $statusCode, message = $message,data = $LoginData()}';
  }
}

class LoginData {
 /* final String verification;
  final String phone;
  final String _id;

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return ;
  }*/
}
