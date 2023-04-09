import 'package:fltex1/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/custom_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 204, 203),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width * 0.9,
                height: height / 3,
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_tpa51dr0.json'),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Kayıt Ol",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 156, 96, 92)),
              ),
              const SizedBox(
                height: 15,
              ),
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
              const SizedBox(
                height: 15,
              ),
              customTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscure: true,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Zaten bir hesabın var mı?",
                    style: TextStyle(color: Color.fromARGB(255, 147, 93, 89)),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Giriş Yap",
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
              const CustomButton(
                btnText: "Kayıt Ol",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
