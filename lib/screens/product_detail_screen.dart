import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static final nameRoute = '/Product_Detail';
  final title;
  ProductDetailScreen({this.title});
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(" title"),
      ),
    );
  }
}
