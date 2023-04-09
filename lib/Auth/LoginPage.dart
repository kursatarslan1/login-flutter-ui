import 'package:fltex1/Auth/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 204, 203),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // animaton
                SizedBox(
                  width: width * 0.9,
                  height: height / 3,
                  child: Lottie.network(
                      'https://assets3.lottiefiles.com/packages/lf20_jcikwtux.json'),
                ),
                const SizedBox(
                  height: 25,
                ),

                const Text(
                  "Giriş Yap",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 156, 96, 92)),
                ),

                const SizedBox(
                  height: 15,
                ),

                // textformfield

                customTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscure: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                customTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscure: true,
                ),

                // have account
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Şifremi Unuttum",
                      style: TextStyle(color: Color.fromARGB(255, 147, 93, 89)),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text(
                        "Kayıt Ol?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 147, 93, 89),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // Button

                const CustomButton(
                  btnText: 'Giriş Yap',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
