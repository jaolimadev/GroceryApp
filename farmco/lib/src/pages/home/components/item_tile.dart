import 'package:farmco/src/config/custom_colors.dart';
import 'package:farmco/src/models/item_model.dart';
import 'package:farmco/src/pages/product/product_screen.dart';
import 'package:farmco/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  ItemTile({
    super.key,
    required this.item,
  });

  final ItemModel item;
  final UtilServices utilServices = UtilServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //CONTEUDO
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return ProductScreen(item: item);
            }));
          },
          child: Card(
            elevation: 3,
            shadowColor: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //IMAGEM
                  Expanded(
                    child: Hero(
                      tag: item.imgUrl,
                      child: Image.asset(item.imgUrl),
                    ),
                  ),

                  //NOME
                  Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //PREÇO - UNIDADE DE MEDIDA
                  Row(
                    children: [
                      Text(
                        utilServices.priceToCurency(item.price),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                      Text(
                        '/${item.unit}',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        //BOTÃO DE ADICIONAR AO CARRINHO
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,
              decoration: BoxDecoration(
                  color: CustomColors.customSwatchColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(15),
                  )),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
