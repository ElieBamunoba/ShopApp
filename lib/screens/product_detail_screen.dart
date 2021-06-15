import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static final nameRoute = '/Product_Detail';
  final title;
  ProductDetailScreen({this.title});
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProvider = Provider.of<ProductProvider>(context, listen: false)
        .findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProvider.name),
      ),
      body: Column(
        children: [
          Image.network(loadedProvider.imageUrl),
          Text(loadedProvider.description),
        ],
      ),
    );
  }
}
