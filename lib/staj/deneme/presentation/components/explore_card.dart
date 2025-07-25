import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                width: 190,
                height: 200,
                "https://images.unsplash.com/photo-1564034503-e7c9edcb420c?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0.1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black.withValues(alpha: 0.6), Colors.transparent],
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  height: 200,
                  width: 1000,
                ),
              ),
              Positioned(
                left: 10,
                bottom: 20,
                child: Text("Myammar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}