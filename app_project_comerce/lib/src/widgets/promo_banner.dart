import 'package:app_project_comerce/src/services/api_services.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  final _controller = PageController(initialPage: 0, viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
        future: ApiServices().productsBanner(),
        builder: (context, AsyncSnapshot snap) {
          if (snap.hasData) {
            final prodList = snap.data['products'] as List;
            return SizedBox(
              height: 300.0,
              child: PageView.builder(
                padEnds: true,
                controller: _controller,
                itemCount: prodList.length,
                itemBuilder: (context, i) {
                  return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        //color: Colors.blueGrey,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                prodList[i]['thumbnail']),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ));
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
