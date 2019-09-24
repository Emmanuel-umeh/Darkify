import 'package:darkify/screens/Favorites.dart';
import 'package:flutter/material.dart';

class FullImage extends StatefulWidget {

   

  // final Image_name;
  final Image_location;

   List <String> FavouriteImages = [
    
  ];
 


  

FullImage({
  
  // this.Image_name,
  this.Image_location,

  this.FavouriteImages
  
  
});

  @override
  _FullImageState createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         appBar: AppBar(
           title: Text(
             "Darkify"
           ),
         ),

         body: Stack(children: <Widget>[
            Container(
             height: double.infinity,
             width: double.infinity,
             child: Image.asset(
               widget.Image_location,
               fit: BoxFit.fill,
             ),
           ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomLeft ,
              child: 
                    FloatingActionButton(
                      
                 onPressed: (){
                   setState(() {
                    FloatingActionButton(
                      onPressed: (){},
                      heroTag: "btn2",
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        
                      ),
                      backgroundColor: Colors.grey,
                    );
                   });

                   widget.FavouriteImages.add(widget.Image_location);
                   debugPrint("the data, $widget.FavouriteImages[0]");
                   debugPrint("THis has been clicked");

                  //  adds image to faourites
                 },
                 child: Icon(
                   Icons.favorite,
                   color: Colors.black
                   
                 ),
                 backgroundColor: Colors.grey,
                 heroTag: "btn2",
               ),
                 ),
          ),

               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Align(
            alignment: Alignment.bottomRight ,
            child: 
                    FloatingActionButton(
                      highlightElevation: 10.0,
                      
                      // foregroundColor: Colors.blue,
                      heroTag: "btn1",
                      
                 onPressed: (){
                  

             
                 },
                 child: Icon(
                   Icons.settings,
                   color: Colors.black,
                   
                 ),
                 backgroundColor: Colors.grey,
             ),
                 ),
               ),

             
           
             

        
           
         ],)
         );
  }
  
}








