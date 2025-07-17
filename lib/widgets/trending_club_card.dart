import 'package:flutter/material.dart';

class TrendingClubCard extends StatelessWidget {
  final String clubName;
  final String imageUrl;
  final double rating;

  const TrendingClubCard({
    super.key,
    required this.clubName,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Club Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 80,
              width: 120,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                height: 80,
                width: 120,
                color: Colors.grey[300],
                child: const Icon(Icons.broken_image),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Club Name
          Text(
            clubName,
            style: const TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          // Rating
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              Text(rating.toStringAsFixed(1)),
            ],
          ),
        ],
      ),
    );
  }
}