class BasicUser {
  int? id;
  String? name;
  String? username;

  BasicUser({
    this.id,
    this.name,
    this.username,
  });

  factory BasicUser.fromJson(Map<String, dynamic> json) {
    return BasicUser(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
    };
  }

  @override
  String toString() {
    return 'BasicUser(id: $id)';
  }
}
