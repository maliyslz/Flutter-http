import 'package:flutter/cupertino.dart';
import 'package:http_demo/models/product.dart';

class ProductListWidget extends StatefulWidget {
  List<Product> products=[];
  ProductListWidget(this.products);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductListWidgetState();
  }
}

class ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return buildProductList(context);
  }

  Widget buildProductList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.products.length,
          itemBuilder: (context, index) {
            return Text(widget.products[index].productName!);
          }),
    );
  }
}
