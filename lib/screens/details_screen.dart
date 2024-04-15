import 'package:flutter/material.dart';
import 'package:store/models/product.dart';
import 'package:store/theme/color.dart';
import 'package:store/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: kPrimaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "رجوع",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
