// import 'package:darkify/widgets/Thumbs.dart';
import 'package:darkify/screens/FullImage.dart';
// import 'package:darkify/widgets/FullImage.dart';
import 'package:flutter/material.dart';

class GetImages extends StatefulWidget {

  final asset_images = [
      {"image_location" : "assets/images/dark1.tmp",},
      {"image_location" : "assets/images/dark2.tmp",},
      {"image_location" : "assets/images/dark3.tmp",},
      {"image_location" : "assets/images/dark4.tmp",},
      {"image_location" : "assets/images/dark5.tmp",},

      {"image_location" : "assets/images/dark6.tmp",},
      {"image_location" : "assets/images/dark7.tmp",},
      {"image_location" : "assets/images/dark8.tmp",},
      {"image_location" : "assets/images/dark9.tmp",},
      {"image_location" : "assets/images/dark0.tmp",},
      
      {"image_location" : "assets/images/dark11.tmp",},
      
      {"image_location" : "assets/images/dark12.tmp",},
      {"image_location" : "assets/images/dark13.tmp",},
      
      {"image_location" : "assets/images/dark14.tmp",},
      {"image_location" : "assets/images/dark15.tmp",},





      {"image_location" : "assets/images/testimonials-3.jpg",},
      {"image_location" : "assets/images/product2.jfif",},

      {"image_location" : "assets/images/product3.jfif",},
    
      {"image_location" : "assets/images/product4.jpg",},


      {"image_location" : "assets/images/product5.jpg",},
 

   
   
      {"image_location" : "assets/images/product6.jpg",},


   
      {"image_location" : "assets/images/product7.jfif",},
    
   
     { "image_location" : "assets/images/product8.jfif",},


   
     { "image_location" : "assets/images/iphone6.jpg",},

   
     { "image_location" : "assets/images/testimonials-1.jpg",},

  

    

      
      {"image_location" : "assets/images/testimonials-2.jpg",}


  ];




  @override
  _GetImagesState createState() => _GetImagesState();
}

class _GetImagesState extends State<GetImages> {
  @override
  Widget build(BuildContext context,) {
    return GridView.builder(
      itemCount: widget.asset_images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: EdgeInsets.all(1.0),
          child: SingleImage(
            // name : widget.asset_images[index]["Name"],
            location : widget.asset_images[index]["image_location"]
          ),
        );

      },
    );
  }
}

class SingleImage extends StatelessWidget {
  final name;
  final location;

  SingleImage({
    this.name,
    this.location
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.black,
      child: Card(
        
          child: Material(
            child: InkWell(
              child: Image.asset(
               location,
               fit: BoxFit.cover,
              ),
              
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FullImage( Image_location: location,)));
              },
            ),
          ),
        )
        );
      
  }
}