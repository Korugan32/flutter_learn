import 'package:flutter/material.dart';

class PopularPlacesCard extends StatelessWidget {
  const PopularPlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: InkWell(
        onTap: () {},
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: Stack(
                  children: [
                    Image.network(
                      height: 210,
                      "https://images.unsplash.com/photo-1557409518-691ebcd96038?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.cover,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined), color: Colors.black),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Koh Rong Samloem"),
                    Row(
                      spacing: 10,
                      children: [
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star, color: Colors.amber, size: 15);
                          }),
                        ),
                        Text("100 reviews"),
                      ],
                    ),
                    Text("Lorem ipsum dolor sit amet..."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}