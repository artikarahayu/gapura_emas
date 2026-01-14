import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/placeholder_image.png', // Replace with your image path
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
