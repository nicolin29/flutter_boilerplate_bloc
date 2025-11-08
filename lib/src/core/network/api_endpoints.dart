class ApiEndpoints {
  // Base paths
  static const String _auth = '/auth';
  static const String _user = '/user';

  // Auth endpoints
  static const String login = '$_auth-login';
  static const String register = '$_auth/register';
  static const String logout = '$_auth/logout';

  // User endpoints
  static const String profile = '$_user/profile';
  static const String update = '$_user/update';
}
