import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:offline_map_minat/class/class_of_admins.dart';
import 'package:offline_map_minat/home_screen.dart';



class AdminJsonData {

  final List  featureJsonData;

   AdminJsonData({required this.featureJsonData});

  factory AdminJsonData.fromJson(Map<String, dynamic> parsedJson) {
    return AdminJsonData(
        featureJsonData:parsedJson['features']);

  }


}

ListOfAdmin listOfAdmin =ListOfAdmin();


class DataPreparationScreen extends StatefulWidget {
  const DataPreparationScreen({Key? key}) : super(key: key);


  @override
  State<DataPreparationScreen> createState() => _DataPreparationScreenState();
}

class _DataPreparationScreenState extends State<DataPreparationScreen> {

  late List<Model> dataOfModel;

   AdminJsonData?  regionData ;

   AdminJsonData?  divisionData ;

  AdminJsonData?  subdivisionData ;



  @override
  void initState() {

    getRegionsData();

    listOfAdmin.divisionsList;
    listOfAdmin.subdivisionsList;

    dataOfModel = <Model>[
      Model('Extrême - Nord',Colors.yellow,Colors.transparent ),
      Model('Nord',const Color.fromRGBO(72, 209, 204, 1.0),Colors.transparent ),
      Model('Adamaoua',const Color(0xfff3dbed),Colors.transparent),
      Model('Nord - Ouest',const Color.fromRGBO(171, 56, 224, 0.75),Colors.transparent),
      Model('Sud - Ouest',const Color.fromRGBO(79, 60, 201, 0.7),Colors.transparent),
      Model('Centre',const Color.fromRGBO(99, 164, 230, 1),Colors.transparent),
      Model('Ouest',const Color.fromRGBO(126, 247, 74, 0.75),Colors.transparent),
      Model('Est',const Color(0xfff9bf73),Colors.transparent),
      Model('Littoral',Colors.teal,Colors.transparent),
      Model('Sud',const Color(0xffdfd6f6),Colors.transparent),
    ];
    //getRegionsData().then(updateRegionName);

 getRegionsData().then((d){ setState(() {
   regionData=d;
 });});

    getDivisionsData().then((d){ setState(() {
      divisionData=d;
    });});

    getSubdivisionsData().then((d){ setState(() {
      subdivisionData=d;
    });});

    super.initState();
  }



  Future getRegionsData () async{
    final String response = await rootBundle.loadString('assets/regions.json');
    final data = await json.decode(response);
    return AdminJsonData.fromJson(data);

  }

  Future getDivisionsData () async{
    final String response = await rootBundle.loadString('assets/divisions.json');
    final data = await json.decode(response);
    return AdminJsonData.fromJson(data);

  }

  Future getSubdivisionsData () async{
    final String response = await rootBundle.loadString('assets/subdivisions.json');
    final data = await json.decode(response);
    return AdminJsonData.fromJson(data);

  }


  @override

  Widget build(BuildContext context) {
   // print(regionName[0]["properties"]["province"]);

    return  Scaffold(
      body: regionData!=null||divisionData!=null||subdivisionData!=null?
          HomeScreen(regionsList: dataOfModel,
          regionFeatureData:regionData!.featureJsonData,
          divisionFeatureData:divisionData!.featureJsonData,
          subdivisionFeatureData:subdivisionData!.featureJsonData,
          divisionsList: listOfAdmin.divisionsList,
          subdivisionsList: listOfAdmin.subdivisionsList):
      const Center(
        child:  CircularProgressIndicator(),
      )
      ,
    );
  }
}



class Model {
  Model(this.region, this.color1, this.color2);

  String region;
  Color color1;
  Color color2;

}




































































