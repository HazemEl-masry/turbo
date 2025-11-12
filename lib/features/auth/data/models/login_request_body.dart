class LoginRequestBody {
  final String email;
  final String password;

  LoginRequestBody({required this.email, required this.password});

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) {
    return LoginRequestBody(email: json['email'], password: json['password']);
  }
}
