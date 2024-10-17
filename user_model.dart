class UserModel {
  final String email;
  final String password;

  UserModel({required this.email, required this.password});
}

List<UserModel> mockusers = [
  UserModel(email: 'kauã@gmail.com', password: 'senha4321'),
  UserModel(email: 'luise@gmail.com', password: 'senha1234' ),
];
