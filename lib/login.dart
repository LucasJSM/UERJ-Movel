import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  OutlineInputBorder _inputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F3D9),

      body: Stack(
        children: [
          // Onda
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/onda.png'),
          ),

          SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: screenHeight * 0.1),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.08),
                
                    // Logo
                    Image.asset('assets/logo.png', width: 320),
                
                    // Campo Email
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                            ),
                
                            border: _inputBorder(const Color(0xFF0FA3B1)),
                            focusedBorder: _inputBorder(const Color(0xFF0FA3B1)),
                
                            filled: true,
                            fillColor: Colors.white,
                
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xFF0FA3B1),
                              size: 35,
                            ),
                          ),
                
                          cursorColor: const Color(0xff0FA3B1),
                        ),
                      ),
                    ),
                
                    SizedBox(height: screenHeight * 0.04),
                
                    // Campo Senha
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                            ),
                
                            border: _inputBorder(const Color(0xFF0FA3B1)),
                            focusedBorder: _inputBorder(const Color(0xFF0FA3B1)),
                
                            filled: true,
                            fillColor: Colors.white,
                
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xFF0FA3B1),
                              size: 35,
                            ),
                
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Color(0xFF0FA3B1),
                              size: 35,
                            ),
                          ),
                
                          cursorColor: const Color(0xFF0FA3B1),
                        ),
                      ),
                    ),
                
                    SizedBox(height: screenHeight * 0.08),
                
                    // Botão Login
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('email: ${emailController.text}');
                            debugPrint('password: ${passwordController.text}');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0FA3B1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xFFF2F3D9),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                
                    SizedBox(height: screenHeight * 0.12),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
