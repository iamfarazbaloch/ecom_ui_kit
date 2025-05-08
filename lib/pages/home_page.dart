import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  Map<String, String> products = {
    'assets/icons/beauty.png': 'Beauty',
    'assets/icons/fashion.png': 'Fashion',
    'assets/icons/kids.png': 'Kids',
    'assets/icons/men.png': 'Men',
    'assets/icons/women.png': 'Women',
    'assets/icons/gifts.png': 'Gifts',
  };

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
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12,
              ),
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
            Container(
              height: 110,
              padding: EdgeInsets.only(top: 12),
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Image.asset(products.keys.toList()[index]),
                        Gap(10),
                        Text(products.values.toList()[index]),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: PageView(
                controller: _pageController,
                children: [_card(), _card(), _card()],
              ),
            ),
            Gap(10),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.pink.shade200,
                  dotColor: Colors.grey.shade300,
                ),
              ),
            ),
            Gap(12),
            _dealCard(),
            Gap(12),
            ListView(children: []),
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

  Widget _card() {
    return Container(
      margin: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/card.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '50-60% OFF',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Now in (products)",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "All colors",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dealCard() {
    return Container(
      height: 100,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deal of the day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(6),
              Row(
                children: [
                  Icon(Icons.lock_clock, color: Colors.white),
                  Gap(5),
                  Text(
                    '22h 55m 20s remaining',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                ),
                Gap(5),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryCard() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(),
      child: Column(),
    );
  }
}
