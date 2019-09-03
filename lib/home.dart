import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home>{

  BuildContext bc;
  @override
  Widget build(BuildContext context) {

    bc = context;
    return buildObject();

    /*try{
      bc = context;
      return buildObject();
    }catch(e){
      Scaffold.of(context).showSnackBar(
          SnackBar(
              content: Text('Exception: $e')
          )
      );
    }*/

  }

  Widget buildObject(){

    return Scaffold(

      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Testing Apps",
          style: TextStyle(
            fontSize: 32,
            fontStyle: FontStyle.normal,
            color: Colors.orange,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(

        child: Menu(),

      ),

    );

  }

  Widget Menu(){
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            onPressed: onPressed_math,
          ),
        ),

        Container(
          child: RaisedButton(
            onPressed: onPressed_math,
          ),
        ),

        /*Container(
          child: Image(

          ),
        ),*/

      ],
    );
  }

  void onPressed_math(){
   snack("Pressed the math button.");
  }

  void onPressed_db(){
    snack("DB connection test button.");
  }

  void snack(String t){
    Scaffold.of(bc).showSnackBar(
        SnackBar(
            content: Text(t)
        )
    );
  }

  Widget Cuadro(){
    double h = MediaQuery.of(bc).size.height;
    double w = MediaQuery.of(bc).size.width;

    return Center(
      child: Container(
        height: h/2,
        width: w/2,

        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10.0),
        ),

        child: Center(

          child: Text("The world is yours!",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.orange,
            ),
          ),

        ),

      ),
    );
  }

}

