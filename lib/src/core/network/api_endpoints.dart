class ApiEndpoints {
  // Base paths
  static const String auth = '/auth';
  static const String user = '/user';

  // Auth endpoints
  static const String login = '$auth/login';
  static const String register = '$auth/register';
  static const String logout = '$auth/logout';

  // User endpoints
  static const String profile = '$user/profile';
  static const String update = '$user/update';
}
