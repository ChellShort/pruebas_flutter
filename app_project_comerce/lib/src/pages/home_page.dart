import 'package:app_project_comerce/src/widgets/best_rating.dart';
import 'package:app_project_comerce/src/widgets/best_seller.dart';
import 'package:app_project_comerce/src/widgets/categories.dart';
import 'package:app_project_comerce/src/widgets/flayers.dart';
import 'package:app_project_comerce/src/widgets/promo_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: const [
          PromoBanner(),
          Categories(),
          BestSellers(),
          BestRating()
        ]
      )
    );
  }
}