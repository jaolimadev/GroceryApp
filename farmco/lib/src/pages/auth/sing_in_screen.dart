import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:farmco/src/pages/auth/components/custom_text_field.dart';
import 'package:farmco/src/pages/base/base_screen.dart';
import 'package:farmco/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

import 'components/sing_up_screen.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
// LOGO
                    const Icon(
                      Icons.eco,
                      size: 70,
                      color: Colors.white,
                    ),

// NOME DO APP
                    const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'Farm.',
                          ),
                          TextSpan(
                            text: 'CO2',
                            style: TextStyle(
                              color: Color.fromARGB(149, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATEGORIAS
                    SizedBox(
                      height: 18,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(149, 255, 255, 255),
                        ),
                        child: AnimatedTextKit(
                          pause: const Duration(milliseconds: 0),
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Agricultura'),
                            FadeAnimatedText('Pecuária'),
                            FadeAnimatedText('Avicultura'),
                            FadeAnimatedText('Aquicultura'),
                            FadeAnimatedText('Apicultura'),
                            FadeAnimatedText('Hidroponia'),
                            FadeAnimatedText('Agrofloresta'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// FORMULÁRIO
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // EMAIL
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),

                    // SENHA
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),

// BOTÃO ENTRAR
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (c) {
                                return const BaseScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

// ESQUECEU A SENHA
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                          ),
                        ),
                      ),
                    ),

                    // DIVISOR
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color.fromARGB(151, 86, 77, 76),
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Ou',
                              style: TextStyle(
                                color: Color.fromARGB(151, 86, 77, 76),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color.fromARGB(151, 86, 77, 76),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),

// BOTÃO CRIAR CONTA
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return SingUpScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
