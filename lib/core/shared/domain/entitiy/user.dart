class User {
  final String userId;
  final String userName;
  final String passWordHash;
  final List<String> role;

  User(
      {required this.userId,
      required this.userName,
      required this.passWordHash,
      required this.role});
}
