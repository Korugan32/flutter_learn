import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/explore_card.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/popular_places_card.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/quick_search_card.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/silver_title.dart';

class HomeTravelScreen extends StatefulWidget {
  const HomeTravelScreen({super.key});

  @override
  State<HomeTravelScreen> createState() => _HomeTravelScreenState();
}

class _HomeTravelScreenState extends State<HomeTravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceMaterialTransparency: true,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1584226958444-6a259ba5e202?q=80&w=1170",
                    fit: BoxFit.cover,
                  ),

                  Container(color: Colors.black.withValues(alpha: 0.3)),

                  /// 📝 Resmin üstündeki yazılar
                  Positioned(
                    left: 20,
                    bottom: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Explore the world today",
                          style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Discover - take your travel to next level",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: SearchBar(hintText: "Search Destination", leading: Icon(Icons.search)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(10, (index) {
                          return QuickSearchCard();
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverTitle(text: "Popular Package in asia"),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Row(
                    children: List.generate(10, (index) {
                      return PopularPlacesCard();
                    }),
                  ),
                ],
              ),
            ),
          ),
          SliverTitle(text: "Expanding your trip around the world"),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Row(
                    spacing: 10,
                    children: List.generate(10, (index) {
                      return ExploreCard();
                    }),
                  ),
                ],
              ),
            ),
          ),
          SliverTitle(text: "Travel beyound the boundary"),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Row(
                    children: List.generate(10, (index) {
                      return PopularPlacesCard();
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
