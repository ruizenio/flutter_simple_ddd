import 'package:flutter/material.dart';

import '../../lib.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: H1Atm("Cart Page!"),
      ),
    );
  }
}
