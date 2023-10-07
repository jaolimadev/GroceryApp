import 'package:farmco/src/config/custom_colors.dart';
import 'package:farmco/src/models/item_model.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //IMAGEM
            Expanded(
              child: Image.asset(item.imgUrl),
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
                  item.price.toString(),
                  style:  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.customSwatchColor,
                  ),
                ),

                Text('/${item.unit}', style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),)
              ],

            ),
          ],
        ),
      ),
    );
  }
}
