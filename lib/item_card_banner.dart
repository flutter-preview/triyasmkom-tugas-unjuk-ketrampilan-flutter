import 'package:flutter/material.dart';

class ItemCardBanner extends StatelessWidget {
  const ItemCardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Stack(children: [
        Container(
          height: 160,
          width: 360,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(
                    "images/assets/banner.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                child: Text(
                  'Gratis Ongkir Selama PPKM!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1.1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Periode Mei - Agustus 2023',
                style: TextStyle(
                    color: Colors.white, fontSize: 10, letterSpacing: 1.1),
              )
            ],
          ),
        )
      ]),
    );
  }
}
