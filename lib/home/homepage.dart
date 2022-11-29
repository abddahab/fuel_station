import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fuel Station"),
      ),
      body: Column(
        children: [
          Image.asset("images/homepage.jpg"),

              Container(
                padding: EdgeInsets.all(20),
                child:  RaisedButton(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(Icons.request_page),),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                                child: Text("Request Fuel" , style: TextStyle(fontSize: 20),)),
                          ],

                        ) ,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.of(context).pushNamed("request");
                        }
                    ),

                ),

              Container( padding: EdgeInsets.all(20),
                child:  RaisedButton(
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(Icons.aod)),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("My Requests" , style: TextStyle(fontSize: 20),)),
                      ],

                    ) ,
                    textColor: Colors.white,
                    onPressed: (){
                      Navigator.of(context).pushNamed("myrequests");
                    }
                ),),

         Container( padding: EdgeInsets.all(20),
            child:  RaisedButton(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child:Icon(Icons.local_gas_station_rounded) ,),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Text("Station" , style: TextStyle(fontSize: 20),) ,),

                  ],

                ) ,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).pushNamed("station");
                }
            ),)






            ],
          )





    );
  }
}

