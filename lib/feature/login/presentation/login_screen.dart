// ignore_for_file: prefer_const_constructors

import 'package:auth_ui/core/component/app_text_field.dart';
import 'package:auth_ui/core/route/app_route_name.dart';
import 'package:auth_ui/core/theme/app_color.dart';
import 'package:auth_ui/feature/register/presentation/register_screen.dart';
import 'package:auth_ui/pages/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 80,
          left: 40,
          right: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.contain,
              image: const AssetImage("assets/Logo_papaya.png"),
            ),
            Text(
              "Iniciar Sesión",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Correo',
                        ),
                      ))),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                child: const Text("Iniciar"),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text("OR"),
                ),
                Expanded(child: Divider()),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Si no tienes una cuenta ",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                child: const Text("¡Registrarse ahora!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
