import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/category_card.dart';
import '../widgets/gig_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const TiltedBellIcon(size: 28, color: Color(0xFF1DBF73)),
            const SizedBox(width: 8),
            const Text('Indian Freelancer'),
          ],
        ),
        actions: [
          IconButton(
            icon: const TiltedBellIcon(color: Colors.black87),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for services...',
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
            ),

            // Categories Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  CategoryCard(
                    title: 'Graphics & Design',
                    icon: Icons.palette,
                    color: Color(0xFFFF6B6B),
                  ),
                  CategoryCard(
                    title: 'Digital Marketing',
                    icon: Icons.campaign,
                    color: Color(0xFF4ECDC4),
                  ),
                  CategoryCard(
                    title: 'Writing & Translation',
                    icon: Icons.edit_note,
                    color: Color(0xFF95E1D3),
                  ),
                  CategoryCard(
                    title: 'Video & Animation',
                    icon: Icons.video_library,
                    color: Color(0xFFFFA07A),
                  ),
                  CategoryCard(
                    title: 'Programming & Tech',
                    icon: Icons.code,
                    color: Color(0xFF9B59B6),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Featured Gigs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended for You',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const GigCard(
                  title: 'I will create professional logo design for your brand',
                  sellerName: 'Rajesh Kumar',
                  rating: 4.9,
                  reviews: 234,
                  price: '₹1,500',
                  imageUrl: '',
                );
              },
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}