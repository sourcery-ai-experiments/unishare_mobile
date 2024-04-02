import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class RegisterService{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Logger logger = Logger();

  Future<User?> registerUser(String email, String password, String displayName) async {

    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.updateDisplayName(displayName);
      return userCredential.user;
    } catch (e) {
      logger.e("Error signing in: $e");
      return null;
    }
  }

}