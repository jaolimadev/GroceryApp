import 'package:farmco/src/pages/auth/components/category_tile.dart';
import 'package:farmco/src/config/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'Frutas',
    'Legumes',
    'Verduras',
    'Carnes',
    'Laticínios',
    'Bebidas',
    'Limpeza',
    'Higiene',
    'Outros',
  ];

  String selectedCategory = 'Frutas';

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
            position: badges.BadgePosition.topEnd(top: 20, end: 50),
            showBadge: true,
            badgeContent: null,
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
            child: IconButton(
              icon: Icon(Icons.shopping_cart,
                  color: CustomColors.customSwatchColor),
              onPressed: () {},
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          //CAMPO DE PESQUISA
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquisar produtos...',
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                prefixIcon: Icon(
                  Icons.search,
                  color: CustomColors.customContrastColor,
                  size: 21,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

//CATEGORIAS

          Container(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = categories[index];
                    });
                  },
                  category: categories[index],
                  isSelected: categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: categories.length,
            ),
          ),

//GRID DE PRODUTOS
        ],
      ),
    );
  }
}
