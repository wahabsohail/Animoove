import 'package:flutter/material.dart';
import '../providers/products.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  final bool sahowFav;
  ProductsGrid(this.sahowFav);
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = sahowFav ? productsData.favoriteItem :  productsData.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        
        value: products[index],
        child: ProductItem(
          // products[index].id,
          // products[index].title,
          // products[index].imageUrl,
          // products[index].price,
        ),
      ),
    );
  }
}
