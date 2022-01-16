class UserContext {
  final String name;

  UserContext(this.name);

  void sendData(args) {}

  UserContext copyWith({
    String? name,
  }) {
    return UserContext(
      name ?? this.name,
    );
  }
}
