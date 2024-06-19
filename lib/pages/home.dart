import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Inner padding
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 2), // Border properties
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hi, Mayko',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/azusa.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Spacer between Container and "Tempat Favorit" text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Personal Favorite Anime',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10), // Spacer between "Tempat Favorit" text and HorizontalScrollView
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const SizedBox(width: 10), // Initial padding
                  _buildPlaceCard('assets/images/mushoku.jpg'),
                  _buildPlaceCard('assets/images/bocchi.jpg'),
                  _buildPlaceCard('assets/images/kimi.jpg'),
                  _buildPlaceCard('assets/images/terror.jpg'),
                  _buildPlaceCard('assets/images/metal.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceCard(String imagePath) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    width: 300,
    height: 450,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

}
