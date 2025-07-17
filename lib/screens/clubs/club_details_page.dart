import 'package:flutter/material.dart';
import '../../widgets/live_rating_widget.dart';

class ClubDetailsPage extends StatelessWidget {
  final String clubName;
  final String location;
  final String imageUrl;

  const ClubDetailsPage({
    super.key,
    required this.clubName,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Club Banner Image
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    clubName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(blurRadius: 10, color: Colors.black87)],
                    ),
                  ),
                ),
              ],
            ),
            // Club Info Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(location, style: TextStyle(color: Colors.grey[600])),
                  const SizedBox(height: 8),
                  const Text("🕒 10 PM - 4 AM"),
                  const Text("💵 Entry: KES 500"),
                  const Divider(height: 30),
                  // Live Rating
                  LiveRatingWidget(
                    clubName: clubName,
                    location: location,
                    initialRating: 4.2,
                  ),
                  // Check-In Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.purple,
                    ),
                    child: const Text("CHECK IN", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}