

import 'package:flutter/material.dart';
import 'package:offline_map_minat/class/tooltip.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'data_preparation.dart';
import 'package:offline_map_minat/class/class_of_admins.dart';



TooltipAdmin _tooltipAdmin=TooltipAdmin();




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,
  required this.regionsList,
  required this.divisionsList,
  required this.subdivisionsList,
  required this.regionFeatureData,
  required this.divisionFeatureData,
  required this.subdivisionFeatureData
  });

  final List<Model> regionsList;
  final List<ModelOfDivisions> divisionsList;
  final List<ModelOfSubdivisions> subdivisionsList;
  final List  regionFeatureData;
  final List  divisionFeatureData;
  final List subdivisionFeatureData;


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //late List<Model> data;

  late MapShapeSource _dataSourceRegions;
  late MapZoomPanBehavior _zoomPanBehavior;
  late List<MapSublayer> _sublayers;


  late MapShapeSource _sublayerSourceDivisions;
  late MapShapeSource _sublayerSourceSubdivisions;
  late MapZoomDetails detail;
  late double myZoomLevel = 6.0;
  late bool showDataLabelRegion=true;
  late bool showDataLabelDivision=false;
  late bool showDataLabelSubdivision= true;
  late Widget Function (BuildContext, int) _layerRegionTooltipBuilder  ;
  late Widget Function (BuildContext, int) _sublayerDivisionTooltipBuilder  ;
  late Widget Function (BuildContext, int) _sublayerSubdivisionTooltipBuilder  ;
  Color strokeColorSublayer=Colors.transparent;
  double strokeWidthSublayer= 0.0;



// function for selecting the base layer

// function for selecting  sublayer

  @override
  void initState() {


    _dataSourceRegions = MapShapeSource.asset(
      'assets/regions.json',
      shapeDataField: 'province',
      dataCount: widget.regionsList.length,
      primaryValueMapper: (int index) => widget.regionsList[index].region,
      shapeColorValueMapper: (int index) => widget.regionsList[index].color1,

    );

    _sublayerSourceDivisions = MapShapeSource.asset(
      'assets/divisions.json',
      shapeDataField: 'division',
      dataCount: widget.divisionsList.length,
      primaryValueMapper: (int index) => widget.divisionsList[index].division,
      shapeColorValueMapper: (int index) => widget.divisionsList[index].color1,

    );
    _sublayerSourceSubdivisions = MapShapeSource.asset(
      'assets/subdivisions.json',
      shapeDataField: 'subdivision',
      dataCount: widget.subdivisionsList.length,
      primaryValueMapper: (int index) =>
      widget.subdivisionsList[index].subdivision,

    );

    _zoomPanBehavior = MapZoomPanBehavior(
      maxZoomLevel: 100,
      //zoomLevel: myZoomLevel,
     minZoomLevel: 6,
      focalLatLng: const MapLatLng (7, 12.5),
     showToolbar: true,
     enablePanning: true,
     enablePinching: true,
     //toolbarSettings: ,
     enableDoubleTapZooming: true, enableMouseWheelZooming: true,

    );

    _layerRegionTooltipBuilder= (BuildContext context, int index) {

      return _selectTooltipRegion(index);
    } ;

    _sublayerDivisionTooltipBuilder= (BuildContext context, int index) {

      return _selectTooltipDivision(index);
    } ;

    _sublayerSubdivisionTooltipBuilder= (BuildContext context, int index) {

      return _selectTooltipSubdivision(index);
    } ;


    _sublayers = [
      MapShapeSublayer(
        source:_dataSourceRegions,
        showDataLabels: _zoomPanBehavior.zoomLevel<=6?true:false,
        shapeTooltipBuilder:_zoomPanBehavior.zoomLevel<=6? _layerRegionTooltipBuilder:null,
        // color: Colors.transparent,
        dataLabelSettings: const MapDataLabelSettings(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize:18,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            //fontFamily: 'Times',
          ),
        ),
        strokeColor:Colors.white,
        strokeWidth: 1.2,
      )
    ];


    super.initState();
  }



  @override
  void dispose() {
    //_sublayers.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    //print(widget.subdivisionFeatureData[1]["properties"]["health_center"]);

   //print(widget.subdivisionsList.length);
    double viewWidth = MediaQuery.of(context).size.width;
    double viewHeight = MediaQuery.of(context).size.height;
    print("the zoomlevel is: ${ _zoomPanBehavior.zoomLevel}");

    return Scaffold(
      body: Stack(

        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: viewWidth * 0.02,
              vertical: 0.02 * viewHeight,
            ),
            child: Center(
              child: SfMaps(

                layers: [
                  MapTileLayer(

                    urlTemplate: 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZWthbnNvbiIsImEiOiJjbDZnNmF6a24wOWJkM2NvNjlnN2Jjc3ZsIn0.El9OojALxwL-FVhiEywBjA',
                    zoomPanBehavior: _zoomPanBehavior,
                    onWillZoom: _handleOnWillZoom,
                    tooltipSettings: const MapTooltipSettings(
                        //hideDelay:double.infinity ,
                        color: Colors.blueAccent,
                        strokeColor: Color.fromRGBO(252, 187, 15, 1),
                        strokeWidth: 1.5),

                    // loadingBuilder: (BuildContext context) {
                    //   return const SizedBox(
                    //     height: 25,
                    //     width: 25,
                    //     child: CircularProgressIndicator(
                    //       strokeWidth: 3,
                    //     ),
                    //   );
                    // },
                    sublayers: _sublayers,
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }









  bool _handleOnWillZoom(MapZoomDetails details) {

setState(() {
  print("the zoom details is: ${details.newZoomLevel! }");

});

      if (  details.newZoomLevel! >6 && details.newZoomLevel! <= 7 ) {


        if(_sublayers.length==1){
          setState(() {
            _sublayers.add(
              MapShapeSublayer(
                source: _sublayerSourceDivisions,
                showDataLabels:_zoomPanBehavior.zoomLevel<11? true:false,
                shapeTooltipBuilder: _sublayerDivisionTooltipBuilder,
                dataLabelSettings: const MapDataLabelSettings(
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    //fontFamily: 'Times',
                  ),

                ),
                strokeColor: Colors.red,
                strokeWidth: 1,
              ),);


          });

        }
        else if (_sublayers.length>2){

          setState(() {
            _sublayers.removeLast();
          });

        }
       }
      else if (  details.newZoomLevel! > 7&& details.newZoomLevel! <= 8 ) {

    //&& details.newZoomLevel! <= 8

          if(_sublayers.length==2) {

            setState(() {

            _sublayers.add(
              MapShapeSublayer(
                source: _sublayerSourceSubdivisions,
                showDataLabels: true,
                shapeTooltipBuilder: _sublayerSubdivisionTooltipBuilder,
                color: Colors.transparent,
                dataLabelSettings: const MapDataLabelSettings(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    //fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    //fontFamily: 'Times',
                  ),

                ),
                strokeColor: Colors.black,
                strokeWidth: 0.5,
              ),);
            });

          }

          // else if(_sublayers.length==1) {
          //
          //   setState(() {
          //
          //     _sublayers.add(
          //         MapShapeSublayer(
          //           source: _sublayerSourceDivisions,
          //           showDataLabels:_zoomPanBehavior.zoomLevel<11? true:false,
          //           shapeTooltipBuilder: _sublayerDivisionTooltipBuilder,
          //           dataLabelSettings: const MapDataLabelSettings(
          //             textStyle: TextStyle(
          //               color: Colors.red,
          //               fontSize: 12,
          //               fontWeight: FontWeight.bold,
          //               //fontStyle: FontStyle.italic,
          //               //fontFamily: 'Times',
          //             ),
          //
          //           ),
          //           strokeColor: Colors.red,
          //           strokeWidth: 1,
          //         ),
          //     );
          //
          //     _sublayers.add(
          //         MapShapeSublayer(
          //           source:_dataSourceRegions,
          //           showDataLabels: _zoomPanBehavior.zoomLevel<=6?true:false,
          //           shapeTooltipBuilder:_zoomPanBehavior.zoomLevel<=6? _layerRegionTooltipBuilder:null,
          //           // color: Colors.transparent,
          //           dataLabelSettings: const MapDataLabelSettings(
          //             textStyle: TextStyle(
          //               color: Colors.black,
          //               fontSize:18,
          //               fontWeight: FontWeight.bold,
          //               fontStyle: FontStyle.italic,
          //               //fontFamily: 'Times',
          //             ),
          //           ),
          //           strokeColor:Colors.white,
          //           strokeWidth: 1.2,
          //         )
          //
          //
          //     );
          //
          //     _sublayers.reversed.toList();
          //   });
          //
          // }

      }

       // else if (details.newZoomLevel! >8){
       //
       //     setState(() {
       //       _sublayers.removeAt(0);
       //       _sublayers.removeAt(1);
       //     });
       //
       //
       //
       // }

  else if ( details.newZoomLevel! <=6 ) {



      if(_sublayers.length==2){
      setState(() {
        _sublayers.removeLast();

      });

      }



      }

    return true;
  }


  Widget _selectTooltipDivision(index) {
    return _tooltipAdmin.divisionTooltip(
      context: context,
      adminUnit: "${widget.divisionFeatureData[index]['properties']['division']}",
      area: widget.divisionFeatureData[index]["properties"]["area"],
      chefLieu: "${widget.divisionFeatureData[index]['properties']['chef_lieu']}",
      regionName: "${widget.divisionFeatureData[index]['properties']['region']}",

    );
  }

  Widget _selectTooltipRegion(index) {
    return _tooltipAdmin.regionTooltip(
      context: context,
      //adminUnit: "aaa",
      adminUnit: "${widget.regionFeatureData[index]["properties"]["province"]}",
      area: widget.regionFeatureData[index]["properties"]["area"],

    );
  }


  Widget _selectTooltipSubdivision(index) {
    return _tooltipAdmin.subdivisionTooltip(
      context: context,
      adminUnit: "${widget.subdivisionFeatureData[index]['properties']['subdivision']}",
      area: widget.subdivisionFeatureData[index]["properties"]["area"],
      schools:widget.subdivisionFeatureData[index]["properties"]["schools"] ,
      nurseryPrimary: widget.subdivisionFeatureData[index]["properties"]["nursery_and_primary"],
      nurserySecondary:widget.subdivisionFeatureData[index]["properties"]["nursery_and_secondary"],
      nurseryPrimarySecondaryUniversityProfessional: widget.subdivisionFeatureData[index]["properties"]
      ["nursery_and_primary_and_secondary_and_university_and_profession"],
        primarySecondary:widget.subdivisionFeatureData[index]["properties"]["primary_and_secondary"] ,
      secondary: widget.subdivisionFeatureData[index]["properties"]["secondary"] ,
      universityHigherInstitute: widget.subdivisionFeatureData[index]["properties"]["university_and_higher_institute"],
      professional:widget.subdivisionFeatureData[index]["properties"]["professional_and_school"],
      healthCenter:widget.subdivisionFeatureData[index]["properties"]["health_center"] ,
      population: 3000,
      divisionName:  "${widget.subdivisionFeatureData[index]['properties']['division']}",

    );
  }


}