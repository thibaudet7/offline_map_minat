import 'package:flutter/material.dart';









class TooltipAdmin {

  //popup of division
  Container divisionTooltip ({
    required BuildContext context,
    required String adminUnit,
    required double area,
    required String chefLieu,
    required String regionName,



  }) {
    return Container(
      width: MediaQuery.of(context).size.width<600?
      MediaQuery.of(context).size.width*0.65:
      MediaQuery.of(context).size.width*0.35,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Center(
                child: Text(
                  adminUnit,
                  style: TextStyle(color: Colors.black,
                      fontSize: Theme.of(context).textTheme.bodyText2!.fontSize
                  ),
                ),
              ),
              const Icon(Icons.map,
                color: Colors.white,
                size: 16,
              ),
            ],),
          const Divider (color: Colors.white,
            height: 10,
            thickness: 1.2,
          ),
          Column(children: [
            Text(
              "Area : $area Km2 " ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
            ),

            Text(
              "chef lieu : $chefLieu " ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
            ),

            Text(
              "region: $regionName " ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
            ),
          ],),

        ],
      ),
    );
  }



//popup of region

   Container regionTooltip ({
     required BuildContext context,
     required String adminUnit,
     required double area,


   }) {
  return Container(
      width: MediaQuery.of(context).size.width<600?
      MediaQuery.of(context).size.width*0.65:
      MediaQuery.of(context).size.width*0.35,
      padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Stack(
              children: [
                 Center(
                 child: Text(
                      adminUnit,
                      style: TextStyle(color: Colors.black,
                          fontSize: Theme.of(context).textTheme.bodyText2!.fontSize
                      ),
                 ),
                 ),
                const Icon(Icons.map,
                  color: Colors.white,
                  size: 16,
                ),
              ],),
             const Divider (color: Colors.white,
              height: 10,
              thickness: 1.2,
             ),
             Text(
              "Area : $area Km2 " ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
            ),

          ],
        ),
  );
  }

//popup of subdivision

   Container subdivisionTooltip ({
     required BuildContext context,
     required String adminUnit,
     required double area,
     required int population,
     required int schools,
     //required double primary,
     //required double nursery,
     required int secondary,
     required int nurseryPrimary,
     required int nurseryPrimarySecondaryUniversityProfessional,
     required int nurserySecondary,
     required int primarySecondary,
     required int universityHigherInstitute,
     required int professional,
     required int healthCenter,
     required String divisionName,
   }) {
     return Container(
       width: MediaQuery.of(context).size.width<600?
       MediaQuery.of(context).size.width*0.65:
       MediaQuery.of(context).size.width*0.35,
       padding: const EdgeInsets.all(10),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           Stack(
             children: [
               Center(
                 child: Text(
                   adminUnit,
                   style: TextStyle(color: Colors.black,
                       fontSize: Theme.of(context).textTheme.bodyText2!.fontSize
                   ),
                 ),
               ),
               const Icon(Icons.map,
                 color: Colors.white,
                 size: 16,
               ),
             ],),
           const Divider (color: Colors.white,
             height: 10,
             thickness: 1.2,
           ),

           Text(
             "Area : $area Km2 " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Division : $divisionName " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Population : $population " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),

           Text(
             "Schools : $schools " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),

           //TODO: add data on nursery
           // Text(
           //   "Nursery : $nursery " ,
           //   style: TextStyle(
           //       color: Colors.white,
           //       fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           // ),

           //TODO: add primary
           // Text(
           //   "Primary : $primary " ,
           //   style: TextStyle(
           //       color: Colors.white,
           //       fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           // ),
           Text(
             "Secondary : $secondary " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Nursery/primary : $nurseryPrimary " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Nursery/primary/secondary : $nurseryPrimarySecondaryUniversityProfessional " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Nursery/primary/secondary \n "
                 "/university/professional : $nurseryPrimarySecondaryUniversityProfessional " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Nursery/secondary : $nurserySecondary " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Primary/secondary : $primarySecondary " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),

           Text(
             "University/higher institute : $universityHigherInstitute " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),
           Text(
             "Professional : $professional " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),

           Text(
             "Health Centers : $healthCenter " ,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
           ),

         ],
       ),
     );
   }


//popup of Schools

  Container schoolsTooltip ({
    required BuildContext context,
    required String schoolName,
    required String schoolType,
    required String subdivisionName,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width<600?
      MediaQuery.of(context).size.width*0.65:
      MediaQuery.of(context).size.width*0.35,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Center(
                child: Text(
                  schoolName,
                  style: TextStyle(color: Colors.black,
                      fontSize: Theme.of(context).textTheme.bodyText2!.fontSize
                  ),
                ),
              ),
              const Icon(Icons.map,
                color: Colors.white,
                size: 16,
              ),
            ],),
          const Divider (color: Colors.white,
            height: 10,
            thickness: 1.2,
          ),
          Text(
            "School type : $schoolType  " ,
            style: TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
          ),

          Text(
            "subdivision : $subdivisionName " ,
            style: TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
          ),
        ],
      ),
    );
  }


// popup of health center


  Container healthCenterTooltip ({
    required BuildContext context,
    required String healthCenterName,
    required String healthCenterType,
    required String subdivisionName,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width<600?
      MediaQuery.of(context).size.width*0.65:
      MediaQuery.of(context).size.width*0.35,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Center(
                child: Text(
                  healthCenterName,
                  style: TextStyle(color: Colors.black,
                      fontSize: Theme.of(context).textTheme.bodyText2!.fontSize
                  ),
                ),
              ),
              const Icon(Icons.map,
                color: Colors.white,
                size: 16,
              ),
            ],),
          const Divider (color: Colors.white,
            height: 10,
            thickness: 1.2,
          ),
          Text(
            "School type : $healthCenterType  ",
            style: TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
          ),

          Text(
            "subdivision : $subdivisionName " ,
            style: TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
          ),
        ],
      ),
    );
  }



// popup of geoName


  Container geoNameTooltip ({
    required BuildContext context,
    required String name,
    required String type,
    required String subdivisionName,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width<600?
      MediaQuery.of(context).size.width*0.65:
      MediaQuery.of(context).size.width*0.35,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Center(
                child: Text(
                  name,
                  style: TextStyle(color: Colors.black,
                      fontSize: Theme.of(context).textTheme.bodyText2!.fontSize
                  ),
                ),
              ),
              const Icon(Icons.map,
                color: Colors.white,
                size: 16,
              ),
            ],),
          const Divider (color: Colors.white,
            height: 10,
            thickness: 1.2,
          ),
          Text(
            "School type : $type  ",
            style: TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
          ),

          Text(
            "subdivision : $subdivisionName " ,
            style: TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.bodyText2!.fontSize),
          ),
        ],
      ),
    );
  }

}


