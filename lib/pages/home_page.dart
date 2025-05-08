import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Image.asset('assets/images/splash.png', width: 100),
                  Image.asset('assets/icons/profile.png'),
                ],
              ),
            ),
            Gap(20),
            _searchField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'All Features',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        Gap(6),
                        Image.asset('assets/icons/sort.png'),
                      ],
                    ),
                  ),
                  Gap(5),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        Gap(6),
                        Image.asset('assets/icons/filter.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchField() {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: 'Search any product',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(Icons.mic_none, color: Colors.grey),
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }

  Map<String, String> products = {
    'assets/icons/beauty.png': 'Beauty',
    'assets/icons/fashion.png': 'Fashion',
    'assets/icons/kids.png': 'Kids',
    'assets/icons/men.png': 'Men',
    'assets/icons/women.png': 'Women',
    'assets/icons/gifts.png': 'Gifts',
  };
}
