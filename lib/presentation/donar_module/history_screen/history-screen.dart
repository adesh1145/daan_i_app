import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  var Date= DateTime.now();

  List<Map> HistroyData=[
    {
      "orderid":"12346629038",
      "date":"24/07/2000",
      "category":"Food",
      "pickuplocation":"c block,GangaNagar,meerut",
      "status":"Pending",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(
        tittle: "History",
      ),

      body:ListView.builder(
        itemCount: 10,
      itemBuilder: (context ,index){
       return Card(
         child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          padding: const EdgeInsets.only(left: 15,top: 10,bottom: 10),
           child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
         
                Text("Order Id:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                 SizedBox(
                  height: 10,
                ),
           
                Text("Date:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                 SizedBox(
                  height: 10,
                ),
          
                Text("Category:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                 SizedBox(
                  height: 10,
                ),

                Text("Pickup location:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                 SizedBox(
                  height: 10,
                ),

                Text("Status:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                 SizedBox(
                  height: 10,
                ),
              ],
           ),
         ),
       );
      }
      )
      
    );
  }
}