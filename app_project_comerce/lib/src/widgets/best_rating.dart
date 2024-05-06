import 'package:app_project_comerce/src/services/api_services.dart';
import 'package:app_project_comerce/src/widgets/flayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestRating extends StatelessWidget {
  const BestRating({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder
    (
      future: ApiServices().bestRating(), 
      builder: (context, AsyncSnapshot snap){


        if (snap.hasData){

          List brList = snap.data['products'] as List;
          brList = brList.where((element) => element['rating'] >= 4.7).toList();

          return Flayers(
                title: 'Mejor Calificado',
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: brList.length,
                  itemBuilder: (context, i){
                      return Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 120.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    brList[i]['thumbnail']
                                  ),
                                )
                              ),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0)
                                    )
                                  ),
                                  child: Text(
                                    '⭐ ${brList[i]['rating'].toString()}',
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                ),
                              ),  
                            ),
                          ),
                          Expanded(
                            child: Text(
                              brList[i]['description'],
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      );
                    }
                  )
                );
        }else{
          return const SizedBox();
        }
      }
      
      );
  }
}