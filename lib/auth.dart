import 'package:appwrite/appwrite.dart';

Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('655b107b0038b2778684')
    .setSelfSigned(status: true);

//Register a user
Account account = Account(client);
Future<String> createUser(String name, String email, String password) async {
  try {
    final user = account.create(
      email: email,
      name: name,
      password: password,
      userId: ID.unique(),
    );
    return "success";
  } on AppwriteException catch (e) {
    return e.message.toString();
  }
}

//Login user
Future loginUser(String email, String password) async {
  try {
    final user = account.createEmailSession(
      email: email,
      password: password,
    );
  } catch (e) {}
}
