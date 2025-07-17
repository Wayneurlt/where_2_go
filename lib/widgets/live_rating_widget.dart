import 'package:flutter/material.dart';

class LiveRatingWidget extends StatefulWidget {
  final String clubName;
  final String location;
  final double initialRating;

  const LiveRatingWidget({
    super.key,
    required this.clubName,
    required this.location,
    required this.initialRating,
  });

  @override
  State<LiveRatingWidget> createState() => _LiveRatingWidgetState();
}

class _LiveRatingWidgetState extends State<LiveRatingWidget> {
  late double _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.people_alt, color: Colors.purple),
              title: Text(widget.clubName),
              subtitle: Text(widget.location),
            ),
            Slider(
              value: _currentRating,
              min: 1,
              max: 5,
              divisions: 4,
              label: _currentRating.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  _currentRating = value;
                });
                // TODO: Send rating to backend
              },
            ),
            Text(
              "Rate ${widget.clubName} live!",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}