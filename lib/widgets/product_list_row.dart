import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product? product;
  ProductListRowWidget(this.product);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                  "https://ideacdn.net/idea/ef/38/myassets/products/675/arcelik-evim-beyaz-dolu-paket.jpg?revision=1697143329"),
              height: 130.0,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(product!.productName!,style: TextStyle(fontSize: 10),),
            Text(product!.unitPrice!.toString()+"euro",style: TextStyle(fontSize: 15.0,color: Colors.greenAccent),)
          ],
        ),
      ),
    );
  }
}
