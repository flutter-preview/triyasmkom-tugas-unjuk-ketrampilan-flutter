import 'package:flutter/material.dart';
import 'package:tugas_unjuk_ketrampilan/banner_list_view.dart';
import 'package:tugas_unjuk_ketrampilan/categories_list_view.dart';
import 'my_bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(),
        appBar: AppBar(
          title: const Text(
            'Mega Mall',
            style: TextStyle(color: Color.fromRGBO(54, 105, 201, 1)),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          children: [
            const SizedBox(
              height: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Search Product Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    fillColor: Color(0x00fafafa),
                    filled: true),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const BannerListView(),
            const SizedBox(
              height: 16,
            ),
            // const CategoriesListView()
          ],
        ),
      ),
    );
  }
}
