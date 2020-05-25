import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/products_grid.dart';
import '../providers/products.dart';

enum FILTER_OPTIONS {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FILTER_OPTIONS selectedValue) {
              if (selectedValue == FILTER_OPTIONS.Favorites) {
                productsContainer.showFavoritesOnly();
              } else {
                productsContainer.showAll();
              }
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FILTER_OPTIONS.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FILTER_OPTIONS.All,
              ),
            ],
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
