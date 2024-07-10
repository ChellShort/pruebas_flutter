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
              final List<dynamic> catList = snap.data as List<dynamic>;
              return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  itemCount: catList.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    // Si los elementos son mapas, obtén el nombre del mapa
                    final category = catList[i];
                    String categoryName;
                    if (category is Map<String, dynamic>) {
                      categoryName = category['name'] ?? 'Unknown';
                    } else if (category is String) {
                      categoryName = category;
                    } else {
                      categoryName = 'Unknown';
                    }

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
                          categoryName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  });
            } else if (snap.hasError) {
              return Center(
                child: Text('Error: ${snap.error}'),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
