import 'package:flutter/material.dart';
import 'package:lojavirtual/tabs/HomeTab.dart';
import 'package:lojavirtual/tabs/orders_tab.dart';
import 'package:lojavirtual/tabs/productsTab.dart';
import 'package:lojavirtual/widgets/CustomDrower.dart';
import 'package:lojavirtual/widgets/cart_button.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrower(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Categorias"),
            centerTitle: true,
          ),
          drawer: CustomDrower(_pageController),
          floatingActionButton: CartButton(),
          body: ProductsTab(),
        ),
        Container(
          color: Colors.yellow,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Meus pedidos'),
            centerTitle: true,
          ),
          body: OrderTab(),
          drawer: CustomDrower(_pageController),
        )
      ],
    );
  }
}
