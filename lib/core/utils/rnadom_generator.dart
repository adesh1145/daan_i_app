import 'dart:math';

String generateRandomPassword(int length) {
  final random = Random.secure();
  const charset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  List<int> randomBytes = List.generate(length, (index) => random.nextInt(256));
  List<int> randomIndices =
      randomBytes.map((byte) => byte % charset.length).toList();
  String password = String.fromCharCodes(
      randomIndices.map((index) => charset.codeUnitAt(index)));

  return password;
}
