import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/models/menu_resto_model.dart';

class MenuRestoItem extends StatelessWidget {
  final MenuRestoModel menuRestoModel;

  const MenuRestoItem({super.key, required this.menuRestoModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          // Tap item Menu Resto Model
        },
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.network(
                    '${menuRestoModel.imageMenu}',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CircularProgressIndicator();
                    },
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey,
                      width: 100,
                      height: 100,
                      child: Icon(Icons.error),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${menuRestoModel.name}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text('${menuRestoModel.category}'),
                      Text('${menuRestoModel.description}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            NumberFormat.currency(
                              locale: 'id_ID',
                              symbol: 'Rp ',
                              decimalDigits: 0,
                            ).format(menuRestoModel.price),
                          ),
                          IconButton.filledTonal(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
