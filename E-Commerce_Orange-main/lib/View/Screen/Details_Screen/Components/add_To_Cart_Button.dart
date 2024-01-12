import 'package:flutter/material.dart';
import '../../../Wedgit/Button.dart';
import 'TopRoundedContainer.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return topRoundedContainer(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: CustomButton(buttonText: "Add To Cart", onTap: () {}),
      ),
    );
  }
}
