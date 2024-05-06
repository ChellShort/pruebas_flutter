import 'package:app_project_comerce/src/services/api_services.dart';
import 'package:app_project_comerce/src/widgets/flayers.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().bestSellerProducts(),
        builder: (contex, AsyncSnapshot snap) {
          if (snap.hasData) {
            final bsList = snap.data['products'] as List;

            return Flayers(
                title: 'Lo mas vendido',
                child: GridView.builder(
                  itemCount: bsList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2
                  ),
                  itemBuilder: (context, i) {
                    return SizedBox(
                      child: Image(
                        image: NetworkImage(bsList[i]['thumbnail']),
                      ),
                    );
                  },
                ));
          } else {
            return const SizedBox();
          }
        });
  }
}
