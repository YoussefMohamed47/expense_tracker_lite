class Failure {
  int code; // 200, 201, 400, 303..500 and so on
  bool isSuccessed; // true, false
  String message; // error , success

  Failure({
    this.code = 0,
    this.isSuccessed = false,
    required this.message,
  });
}
