import 'package:auth_ui/core/component/app_text_field.dart';
import 'package:auth_ui/core/route/app_route_name.dart';
import 'package:auth_ui/core/theme/app_color.dart';
import 'package:auth_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 80,
          left: 24,
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            Image(
              width: MediaQuery.of(context).size.width,
              height: 170,
              fit: BoxFit.contain,
              image: const AssetImage("assets/registro.png"),
            ),
            // ignore: prefer_const_constructors
            
            Text(
              "Registro",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AppTextField(
                  prefix: Icon(Icons.person_outline),
                  hint: "Usuario",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  prefix: Icon(Icons.alternate_email_rounded),
                  hint: "Correo electrónico",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  prefix: Icon(Icons.phone_outlined),
                  hint: "Celular",
                  textInputAction: TextInputAction.done,
                ),
                
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Al registrarte, estás de acuerdo con nuestros ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Términos y Condiciones",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                      ),
                      TextSpan(
                        text: " y ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Políticas de privacidad",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 64,
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
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    child: const Text("Register"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
