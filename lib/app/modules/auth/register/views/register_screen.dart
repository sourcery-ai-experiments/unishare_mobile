import 'package:flutter/material.dart';
import 'package:unishare/app/modules/homescreen/home_screen.dart';
import 'package:unishare/widgets/primary_button.dart';
import 'package:unishare/app/modules/auth/login/views/login_screen.dart';
import 'package:unishare/app/modules/auth/register/controller/register_controller.dart';
import 'package:unishare/app/modules/dashboard/views/dashboard_screen.dart';
import 'package:logger/logger.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final RegisterService _registerService = RegisterService();

  final Logger _logger = Logger();

  Future<void> _register() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final displayName = _nameController.text.trim();
    if (email.isEmpty || password.isEmpty || displayName.isEmpty) {
      _logger.e("Email, password, or display name is empty");
      return;
    }

    final user = await _registerService.registerUser(email, password, displayName);
    if (user != null) {
      _logger.i("Register successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      _logger.w("Register failed");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Akun',
          style: TextStyle(
              fontFamily: 'Rubik', fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              const Image(
                // Centered Image
                image: AssetImage('assets/img/unishare_text.png'),
                height: 200.0,
              ),
              const SizedBox(height: 40.0),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Masukkan Nama Lengkap',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 40.0),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Masukkan Email atau Nomor HP',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 40.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Masukkan Password',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 40.0),
              Center(
                child: Column(
                  children: [
                    PrimaryButton("Daftar Akun", onPressed: _register),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Atau daftar menggunakan',
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      minimumSize: const Size(150.0, 50.0),
                    ),
                    icon: const Icon(Icons.g_mobiledata, color: Colors.blue),
                    label: const Text('Google'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150.0, 50.0),
                    ),
                    icon: const Icon(Icons.facebook),
                    label: const Text('Facebook'),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun?'),
                  const SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Login!',
                      style: TextStyle(
                        color: Colors.orange.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
