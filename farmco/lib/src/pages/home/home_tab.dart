import 'package:farmco/src/pages/home/components/category_tile.dart';
import 'package:farmco/src/config/custom_colors.dart';
import 'package:farmco/src/pages/home/components/item_tile.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:farmco/src/models/app_data.dart' as app_data;

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
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
                text: 'Table',
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

//CAMPO DE PESQUISA
      body: Column(
        children: [
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
                      selectedCategory = app_data.categories[index];
                    });
                  },
                  category: app_data.categories[index],
                  isSelected: app_data.categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: app_data.categories.length,
            ),
          ),

//GRID DE PRODUTOS
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: app_data.items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: app_data.items[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
