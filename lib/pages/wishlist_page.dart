import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../model/wishlist_model.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _buildHeader(),
            _buildSearchField(),
            _buildFeatureSortFilter(),
            _buildProductGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          Image.asset('assets/images/splash.png', width: 100),
          Image.asset('assets/icons/profile.png'),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: const InputDecoration(
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
          const Text(
            '52082+ products',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Spacer(),
          _buildSortFilterItem('Sort', 'assets/icons/sort.png'),
          const Gap(5),
          _buildSortFilterItem('Filter', 'assets/icons/filter.png'),
        ],
      ),
    );
  }

  Widget _buildSortFilterItem(String label, String iconPath) {
    return Container(
      padding: const EdgeInsets.all(6),
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
          const Gap(6),
          Image.asset(iconPath, width: 20, height: 20),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: wishlistItems.length,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        final item = wishlistItems[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.description,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "PKR ${item.price}",
                  style: const TextStyle(color: Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const Gap(4),
                    Text(
                      "(${item.reviews}) reviews",
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
