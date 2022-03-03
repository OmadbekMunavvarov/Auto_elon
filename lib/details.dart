import 'package:flutter/material.dart';

import 'car.dart';

class DetailsPage extends StatelessWidget {

  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)!.settings.arguments as Map<String,Car>;
    final Car car=args['car']!;
    return Scaffold(
          appBar: AppBar(
            title:Text(car.model),),
      body:ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context,int index)
      {
        return  Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(car.imageUrl),
              ),
              SizedBox(height: 10.0,),
              Text(car.cost,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text(car.info),
              SizedBox(height: 10.0,),
              Container(
                height: 8.0,
                width: double.infinity,
                color: Colors.grey,
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shahar',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text('Kuzovr',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text('Uzatish qutisi',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text('Rangi',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text('Uzatma',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text('Kami bor',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text('Dvigatel',style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                    ],
                  ),
                  SizedBox(width: 160,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(car.shahar), SizedBox(height: 5.0,),
                      Text(car.kuzov), SizedBox(height: 5.0,),
                      Text(car.quti), SizedBox(height: 5.0,),
                      Text(car.color), SizedBox(height: 5.0,),
                      Text(car.uzatma), SizedBox(height: 5.0,),
                      Text(car.kami), SizedBox(height: 5.0,),
                      Text(car.mator), SizedBox(height: 5.0,),
                    ],
                  )
                ],
              ),
              Container(
                height: 8.0,
                width: double.infinity,
                color: Colors.grey,
              ),
              SizedBox(height: 10.0,),
              Text('Opsiya va xarakteristikalar',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 5.0,),
              Text(car.additional),
            ],
          ),
        );
      }
      ),

    );
  }
  // Future showMyDialog(BuildContext context){
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context)=>AlertDialog(
  //         title: Text('bu alert dialog'),
  //         content: Text("asosiy qism"),
  //         actions: [
  //           TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Ok'))
  //         ],
  //       ),
  //   );
  // }
}
