import 'package:farmco/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//APP BAR
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CustomColors.customSwatchColor,
            ),
            children: const [
              TextSpan(
                text: 'Farm.',
                style: TextStyle(),
              ),
              TextSpan(
                text: 'CO2',
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),


      

//CAMPO DE PESQUISA

//CATEGORIAS

//GRID DE PRODUTOS
    );
  }
}
