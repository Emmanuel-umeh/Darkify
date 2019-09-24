import 'package:darkify/widgets/GetImages.dart';
import 'package:darkify/widgets/HomePage.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget{
  // final List<String> paths;
  // const Body({Key key, this.paths}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: <Widget>[

        Container(
           color: Colors.grey,
      height: double.infinity,
      width: double.infinity,
      child :  GetImages(

        ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.bottomRight,
            
            child: FloatingActionButton(
              heroTag: "btn4",
              backgroundColor: Colors.black,
              onPressed: (){},
              child: Icon(
                Icons.refresh,
                color: Colors.teal,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            
            child: FloatingActionButton(
              heroTag: "btn5",
              backgroundColor: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Icon(
                Icons.arrow_upward,
                color: Colors.redAccent,
              ),
            ),
          ),
        )

      ],
      
     
      
      
      


    );
  }

}