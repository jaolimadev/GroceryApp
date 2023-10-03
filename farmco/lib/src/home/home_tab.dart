import 'package:farmco/src/config/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

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
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CustomColors.customSwatchColor,
            ),
            children: [
              const TextSpan(
                text: 'Farm.',
                style: TextStyle(),
              ),
              TextSpan(
                text: 'CO2',
                style: TextStyle(
                  color: CustomColors.customContrastColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: 10, end: 50),
            showBadge: true,
            onTap: () {},
            badgeContent: Icon(
              Icons.shopping_cart,
              color: CustomColors.customSwatchColor,
              size: 25,
            ),
            badgeAnimation: const badges.BadgeAnimation.slide(
              animationDuration: Duration(milliseconds: 500),
              colorChangeAnimationDuration: Duration(seconds: 1),
              loopAnimation: false,
              curve: Curves.fastOutSlowIn,
              colorChangeAnimationCurve: Curves.easeInCubic,
            ),
            badgeStyle: const badges.BadgeStyle(
              padding: EdgeInsets.all(5),
            ),
          ),
        ],
      ),

//CAMPO DE PESQUISA

//CATEGORIAS

//GRID DE PRODUTOS
    );
  }
}
