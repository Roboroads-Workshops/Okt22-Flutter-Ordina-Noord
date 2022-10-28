import 'package:flutter/material.dart';
import 'package:tmp_flutter_workshop/models/review_model.dart';
import 'package:tmp_flutter_workshop/widgets/review_card.dart';

class OverviewPage extends StatelessWidget {
  OverviewPage({
    Key? key,
  }) : super(key: key);

  var reviewList = [
    ReviewModel(
      imageUrl:
          "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_TheWitcher3WildHunt_enGB.jpg",
      title: "The Witcher 3",
      category: "videogame",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Robbin Reviews Everything"),
      ),
      body: ListView(
        children: [
          for (var review in reviewList)
            ReviewCard(
              review: review,
            )
        ],
      ),
    );
  }
}
