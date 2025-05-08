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

  final Map<String, String> products = {
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
            _buildHeader(),
            Gap(20),
            _buildSearchField(),
            _buildFeatureSortFilter(),
            _buildCategoryScroll(),
            _buildCarousel(),
            Gap(10),
            _buildPageIndicator(),
            Gap(12),
            _buildDealCard(),
            Gap(12),
            _buildProductList(),
            Gap(20),
            _offerCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Image.asset('assets/images/splash.png', width: 100),
          Image.asset('assets/icons/profile.png'),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
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

  Widget _buildFeatureSortFilter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Text(
            'All Features',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          Spacer(),
          _buildSortFilterItem('Sort', 'assets/icons/sort.png'),
          Gap(5),
          _buildSortFilterItem('Filter', 'assets/icons/filter.png'),
        ],
      ),
    );
  }

  Widget _buildSortFilterItem(String label, String iconPath) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
          ),
          Gap(6),
          Image.asset(iconPath),
        ],
      ),
    );
  }

  Widget _buildCategoryScroll() {
    return Container(
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
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final icon = products.keys.toList()[index];
          final label = products.values.toList()[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(children: [Image.asset(icon), Gap(10), Text(label)]),
          );
        },
      ),
    );
  }

  Widget _buildCarousel() {
    return SizedBox(
      height: 230,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (_, __) => _buildPromoCard(),
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Center(
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
    );
  }

  Widget _buildPromoCard() {
    return Container(
      margin: EdgeInsets.all(16),
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
                  style: TextStyle(color: Colors.white),
                ),
                Text("All colors", style: TextStyle(color: Colors.white)),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Text('Shop Now', style: TextStyle(color: Colors.white)),
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

  Widget _buildDealCard() {
    return Container(
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
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(color: Colors.white, fontSize: 16),
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

  Widget _buildProductList() {
    return SizedBox(
      height: 280,

      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,

        children: [
          _buildCategoryCard(
            'assets/images/girl.png',
            'Women Printed Kurta',
            'Neque porro quisquam est qui dolorem ipsum quia',
            '250',
            '50%',
          ),
          Gap(16),
          _buildCategoryCard(
            'assets/images/show.png',
            'HRX by Hrithik Roshan',
            'Neque porro quisquam est qui dolorem ipsum quia',
            '250',
            '50%',
          ),
          Gap(16),
          _buildCategoryCard(
            'assets/images/girl2.png',
            'Philips BHH880/10',
            'Hair Straightening Brush With Infused Bristles.',
            '250',
            '50%',
          ),
          Gap(16),
          _buildCategoryCard(
            'assets/images/watch.png',
            'TITAN Men Watch',
            'The Titan Men Watch is a modern black color',
            '250',
            '50%',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
    String image,
    String title,
    String description,
    String price,
    String priceOff,
  ) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(image),
          ),
          Gap(10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Gap(4),
          Text(description),
          Gap(4),
          Text(
            '\$ $price',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),

          Row(
            children: [
              Text(
                '\$ 500',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                priceOff,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star_half, color: Colors.amber, size: 20),
              Text('(200)', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _offerCard() {
    return Container(
      width: 180,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset('assets/images/offer.png'),
          ),
        ],
      ),
    );
  }
}
