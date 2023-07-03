import 'package:flutter/material.dart';

class ButtonIconCategories extends StatelessWidget {
  const ButtonIconCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconCategories(),
          SizedBox(
            width: 16,
          ),
          IconCategories(),
          SizedBox(
            width: 16,
          ),
          IconCategories(),
          SizedBox(
            width: 16,
          ),
          IconCategories(),
        ]);
  }
}

class IconCategories extends StatelessWidget {
  const IconCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: IconButton(
        icon: const Icon(
          Icons.restaurant_outlined,
          size: 40,
        ),
        onPressed: () {},
      ),
    );
  }
}
