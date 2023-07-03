import 'package:flutter/material.dart';
import 'package:tugas_unjuk_ketrampilan/item_card_banner.dart';

class BannerListView extends StatelessWidget {
  const BannerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            ItemCardBanner(),
            ItemCardBanner(),
            ItemCardBanner(),
            ItemCardBanner(),
          ],
        ),
      ),
    );
  }
}
