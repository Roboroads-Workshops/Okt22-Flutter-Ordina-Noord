import 'package:flutter/material.dart';
import 'package:tmp_flutter_workshop/models/review_model.dart';
import 'package:tmp_flutter_workshop/pages/review_details_page.dart';

class ReviewCard extends StatelessWidget {
  final ReviewModel review;

  const ReviewCard({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(review.imageUrl),
          ListTile(
            title: Text(review.title),
            subtitle: Text("Category: ${review.category}"),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewDetailsPage(
                        review: review,
                      ),
                    ),
                  );
                },
                child: Text("READ MORE"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
