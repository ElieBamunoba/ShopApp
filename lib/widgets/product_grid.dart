import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_provider.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    final products = productData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: products[index],
        // child: ProductItem(
        //     // id: products[index].id,
        //     // name: products[index].name,
        //     // imageUrl: products[index].imageUrl,
        //     ),
      ),
    );
  }
}
