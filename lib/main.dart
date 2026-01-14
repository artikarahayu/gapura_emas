import 'package:flutter/material.dart';
import 'widgets/app_card.dart';
import 'widgets/custom_carousel.dart';
import 'widgets/search_bar.dart';

void main() {
  runApp(const GapuraEmasApp());
}

class GapuraEmasApp extends StatelessWidget {
  const GapuraEmasApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gapura Emas',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gapura Emas'),
        actions: const [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const CustomCarousel(), // Image carousel
            const SizedBox(height: 20),
            const SearchBar(), // Search bar widget
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  AppCard(title: 'SMART Perizinan', icon: Icons.check),
                  AppCard(title: 'SEPAKAT', icon: Icons.ac_unit),
                  AppCard(title: 'SAKTI', icon: Icons.star),
                  AppCard(title: 'APIK UMKM', icon: Icons.home),
                  AppCard(
                    title: 'Hallo Fish',
                    icon: Icons.fish,
                  ), // Corrected icon here
                  AppCard(title: 'Saraswati', icon: Icons.school),
                  AppCard(title: 'SPBE', icon: Icons.settings),
                  AppCard(title: 'Sikap Baja', icon: Icons.build),
                  AppCard(title: 'Sapa Warga', icon: Icons.people),
                  AppCard(title: 'Majestik', icon: Icons.business),
                  AppCard(title: 'Buku Tamu', icon: Icons.book),
                  AppCard(title: 'Anjab', icon: Icons.work),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
