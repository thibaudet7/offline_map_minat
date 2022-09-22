import 'package:flutter/material.dart';
import 'package:offline_map_minat/data_preparation.dart';
//import 'home_screen.dart';
//import 'package:flutter/services.dart';
//import 'package:syncfusion_flutter_maps/maps.dart';



// class RegionJsonData {
//
//   final List <Map<String, dynamic> > featureOfRegionJsonData;
//
//   RegionJsonData({required this.featureOfRegionJsonData});
//
//   factory RegionJsonData.fromJson(Map<String, dynamic> parsedJson) {
//     return RegionJsonData(
//         featureOfRegionJsonData:parsedJson['features']);
//
//   }
//
//
// }



void main() async{

  runApp( const OfflineMap());
}

class OfflineMap extends StatelessWidget {
  const OfflineMap({super.key});


  // This widget is the root of your application


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: DataPreparationScreen(),
    );
  }
}




