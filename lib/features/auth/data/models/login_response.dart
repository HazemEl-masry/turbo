class LoginResponse {
  final String accessToken;
  final String expiresAtUtc;
  final String refreshToken;

  LoginResponse({
    required this.accessToken,
    required this.expiresAtUtc,
    required this.refreshToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      accessToken: json['accessToken'] as String,
      expiresAtUtc: json['expiresAtUtc'] as String,
      refreshToken: json['refreshToken'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'expiresAtUtc': expiresAtUtc,
      'refreshToken': refreshToken,
    };
  }
}
