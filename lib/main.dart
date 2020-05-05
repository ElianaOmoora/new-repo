import 'package:flutter/material.dart';

void main (){
  runApp(new MaterialApp(
    title: "Fruits Cake",
    debugShowCheckedModeBanner: false,
    home: new FruitsCake(),
  ));
}

class FruitsCake extends StatefulWidget {
  @override
  _FruitsCakeState createState() => _FruitsCakeState();
}

class _FruitsCakeState extends State<FruitsCake> {
  int numberofCakes= 0;
  num price=0;
  void addAnOrder(){
    if(numberofCakes<6 ) {
      setState(() {
        numberofCakes += 1;
        price = numberofCakes * 84.99;
      });
    }
  }
  void reduceAnOrder(){
    if(numberofCakes>0){
      setState(() {
        numberofCakes-=1;
        price= numberofCakes*84.99;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_back_ios,),
            onPressed: (){},
            color: Colors.white,
            alignment: Alignment(-78, 0) ,
            ),
          new IconButton(icon: new Icon(Icons.favorite_border), onPressed: (){}, color: Colors.white,),
        ],
        backgroundColor: Colors.grey.shade800,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade800,
      body: new Center(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Fruits Cake", style: new TextStyle(color: Colors.white, fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Strawberry & kiwi special", style: new TextStyle(color: Colors.blueGrey.shade300, fontSize: 12),),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 7, right: 7),
                  padding: const EdgeInsets.only(left:22.0, right: 22.0,top:6.0 ,bottom:6.0),
                  decoration: new BoxDecoration( color: Colors.blueGrey.shade300,
                    borderRadius: new BorderRadius.circular(15),border: Border.all(color: Colors.blueGrey.shade300),
                  ),
                  child: new InkWell(
                    child: new Text("1 Kg", style: new TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w600),),
                    onTap: ()=>debugPrint("Button is prassed"),
                  ),

                ),

                Container(
                  margin: const EdgeInsets.only(left: 7, right: 7),
                  padding: const EdgeInsets.only(left:22.0, right: 22.0,top:6.0 ,bottom:6.0),
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(15),border: Border.all(color: Colors.blueGrey.shade300)
                  ),
                  child: new InkWell(
                    child: new Text("2 Kg", style: new TextStyle(color: Colors.blueGrey.shade300, fontSize: 12,fontWeight: FontWeight.w600),),
                    onTap: ()=>debugPrint("Button is prassed"),
                  ),

                ),

                Container(
                  margin: const EdgeInsets.only(left: 7, right: 7),
                  padding: const EdgeInsets.only(left:22.0, right: 22.0,top:6.0 ,bottom:6.0),
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(15),border: Border.all(color: Colors.blueGrey.shade300)
                  ),
                  child: new InkWell(
                    child: new Text("3 Kg", style: new TextStyle(color: Colors.blueGrey.shade300, fontSize: 12,fontWeight: FontWeight.w600),),
                    onTap: ()=>debugPrint("Button is prassed"),
                  ),

                ),

                Container(
                  margin: const EdgeInsets.only(left: 7, right: 7),
                  padding: const EdgeInsets.only(left:22.0, right: 22.0,top:6.0 ,bottom:6.0),
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(15),border: Border.all(color: Colors.blueGrey.shade300)
                  ),
                  child: new InkWell(
                    child: new Text("4 Kg", style: new TextStyle(color: Colors.blueGrey.shade300, fontSize: 12,fontWeight: FontWeight.w600)),
                    onTap: ()=>debugPrint("Button is prassed"),
                  ),

                ),

              ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25.0, bottom:25.0),
              child: Row(
                  children: <Widget>[

                     Container(
                       margin: const EdgeInsets.only(left:40, right: 40),
                       child: Image.asset(
                        'images/fruitCake.jpg',
                        height: 250.0,
                        width: 270.0,
                    ),
                     ),

                  Column(
                      children: <Widget>[

                        IconButton(icon: new Icon(Icons.add), onPressed:addAnOrder,color: Colors.white, ),

                        Container(
                          child: new Text("$numberofCakes", style: new TextStyle(color: Colors.white, fontSize: 13,),),
//                      margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.only(right: 13.0 , left: 13.0, top: 9.5, bottom: 9.5,),
                          decoration: new BoxDecoration(color: Colors.blueGrey.shade300,
                              borderRadius: new BorderRadius.circular(40),border: Border.all(color: Colors.blueGrey.shade300)
                          ),
                        ),

                        IconButton(icon: new Icon(Icons.remove), onPressed:reduceAnOrder , color: Colors.white,),
                      ],
                    ),
                  ],
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
               IconButton(icon: new Icon(Icons.attach_money), onPressed: (){},color: Colors.white,iconSize:32,),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                    child:new Text("$price",style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.w600),)),
              ],
            ),//not done
            Row(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(left:25),
                  child: Image.asset(
                    'images/Eggs.png',
                    height: 120.0,
                    width: 120.0,
                  ),
                ),
                Image.asset(
                    'images/vanilla.png',
                    height: 120.0,
                    width: 120.0,
                  ),
                Image.asset(
                    'images/suger.png',
                    height: 120.0,
                    width: 120.0,
                  ),
              ],

            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left:25),
                  child: Image.asset(
                    'images/bottom.png',
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("DELIVERY" ,style: new TextStyle(color: Colors.white,),),
                      Text("45, Amarlads",style: new TextStyle(color: Colors.white,fontSize: 12),),
                      Text("Nr. Hamer Road, London",style: new TextStyle(color: Colors.white,fontSize: 12),),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
