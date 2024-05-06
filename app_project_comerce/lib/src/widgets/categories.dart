import 'package:app_project_comerce/src/services/api_services.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: FutureBuilder(
          future: ApiServices().productsCategories(),
          builder: (context, snap) {
            if (snap.hasData) {
              final catList = snap.data as List;
              return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  itemCount: catList.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        width: 280.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: Alignment.bottomCenter / 1.2,
                        child: Text(
                          catList[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
