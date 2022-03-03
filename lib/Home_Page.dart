import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'car.dart';
import 'details.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);
  static List<Car> list=[

    Car('assets/images/ferrari.jpg','Ferrari', 'Red', '120000', '300','+998978596321','Ferrari,4 pozitsiya 2010','Fargona','Sedan','Avtomat','Oldi va orqa','Ha','4.0 benzin','Mashina 1,6 litrli Ferrari 059/3 V6 quvvat qurilmasidan foydalanishga moljallangan edi. Avtomobil nomi muxlislar tomonidan kompaniya saytidagi maxsus so‘rovnoma orqali tanlandi tanlov yilini bildiradi, esa avtomobilda turbinali quvvat stansiyasi mavjudligini korsatadi. Mashina birinchi raqamli Scuderia Ferrari, jahon chempioni Fernando Alonsoning istaklariga kora, ozining pastroq haydash uslubi uchun yaratilgan'),
    Car('assets/images/porsche_Panamera.jpg','Porsche Panamera', 'White', '200000', '280','+998904567893','2007 sedan 5.0 automat','Fargona','Sedan','Avtomat','Oldi va orqa','Ha','4.0','Mashina 1,6 litrli Ferrari 059/3 V6 quvvat qurilmasidan foydalanishga moljallangan edi. Avtomobil nomi muxlislar tomonidan kompaniya saytidagi maxsus so‘rovnoma orqali tanlandi tanlov yilini bildiradi, esa avtomobilda turbinali quvvat stansiyasi mavjudligini korsatadi. Mashina birinchi raqamli Scuderia Ferrari, jahon chempioni Fernando Alonsoning istaklariga kora, ozining pastroq haydash uslubi uchun yaratilgan'),
    Car('assets/images/rolce_royce_ghost.jpg','Rolce Royce Ghost', 'White', '1000000', '240','+998932587412','2010 sedan 3.5 automat','Fargona','Sedan','Avtomat','Oldi va orqa','Ha','4.0','Mashina 1,6 litrli Ferrari 059/3 V6 quvvat qurilmasidan foydalanishga moljallangan edi. Avtomobil nomi muxlislar tomonidan kompaniya saytidagi maxsus so‘rovnoma orqali tanlandi tanlov yilini bildiradi, esa avtomobilda turbinali quvvat stansiyasi mavjudligini korsatadi. Mashina birinchi raqamli Scuderia Ferrari, jahon chempioni Fernando Alonsoning istaklariga kora, ozining pastroq haydash uslubi uchun yaratilgan'),
    Car('assets/images/tesla_X.jpg','Tesla X', 'Blue', '40000', '250','+998914563214','2022 sedan 2.5 automat','Fargona','Sedan','Avtomat','Oldi va orqa','Ha','4.0','Mashina 1,6 litrli Ferrari 059/3 V6 quvvat qurilmasidan foydalanishga moljallangan edi. Avtomobil nomi muxlislar tomonidan kompaniya saytidagi maxsus so‘rovnoma orqali tanlandi tanlov yilini bildiradi, esa avtomobilda turbinali quvvat stansiyasi mavjudligini korsatadi. Mashina birinchi raqamli Scuderia Ferrari, jahon chempioni Fernando Alonsoning istaklariga kora, ozining pastroq haydash uslubi uchun yaratilgan'),
    Car('assets/images/tico_daewoo.jpg','Daewoo Tico', 'Red', '4000', '180','+998958523641','1995 sedan 1.2 mexanic','Fargona','Sedan','Avtomat','Oldi va orqa','Ha','4.0','Mashina 1,6 litrli Ferrari 059/3 V6 quvvat qurilmasidan foydalanishga moljallangan edi. Avtomobil nomi muxlislar tomonidan kompaniya saytidagi maxsus so‘rovnoma orqali tanlandi tanlov yilini bildiradi, esa avtomobilda turbinali quvvat stansiyasi mavjudligini korsatadi. Mashina birinchi raqamli Scuderia Ferrari, jahon chempioni Fernando Alonsoning istaklariga kora, ozining pastroq haydash uslubi uchun yaratilgan'),
    Car('assets/images/calypso_red.jpg','Hyundai Sonata', 'Red', '33000', '220','+998998564785','2020 sedan 2.5 automat','Fargona','Sedan','Avtomat','Oldi va orqa','Ha','4.0','Mashina 1,6 litrli Ferrari 059/3 V6 quvvat qurilmasidan foydalanishga moljallangan edi. Avtomobil nomi muxlislar tomonidan kompaniya saytidagi maxsus so‘rovnoma orqali tanlandi tanlov yilini bildiradi, esa avtomobilda turbinali quvvat stansiyasi mavjudligini korsatadi. Mashina birinchi raqamli Scuderia Ferrari, jahon chempioni Fernando Alonsoning istaklariga kora, ozining pastroq haydash uslubi uchun yaratilgan'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('AutoElon',style:
        TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        //centerTitle: true,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: (){}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search,color: Colors.white,)),

        ],


      ),
      body:ListView(
        children: [
          myCar(list[0],context),
          myCar(list[1],context),
          myCar(list[2],context),
          myCar(list[3],context),
          myCar(list[4],context),
          myCar(list[5],context),
        ],
      )

    );
  }
  Widget myCar(Car car,context){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/details',arguments: {"car":car});
      },
        child: Card(
        margin: EdgeInsets.all(1),
        //elevation: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 180,
              width: 200,
              //margin: EdgeInsets.all(5),
              child: Image.asset(car.imageUrl,),
            ),
           // SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(car.model,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                Text('Color:${car.color}',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Cost:${car.cost}',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('MaxSpeed:${car.maxSpeed}',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Tel:${car.tel}',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            )
          ],)
        ) );
  }
}
