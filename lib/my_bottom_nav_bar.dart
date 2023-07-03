import 'package:flutter/material.dart';

class BotomNavBarApp extends StatelessWidget {
  const BotomNavBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: SizedBox(
        height: 80,
        child: Padding(
          padding: EdgeInsets.only(top: 8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.home_outlined),
                    Text(
                      'HOME',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    Text(
                      'WISHLIST',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.shopping_bag_rounded),
                    Text(
                      'ORDER',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/92775161?v=4'),
                      ),
                    ),
                    Text(
                      'ACCOUNT',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
