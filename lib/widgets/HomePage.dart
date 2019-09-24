import 'package:darkify/widgets/Body.dart';
import 'package:flutter/material.dart';
// import 'package:darkify/widgets/GetImages.dart';

class HomePage extends StatelessWidget{

  //   final List<String> _paths = [
  //     'assets/images/iphone6.jpg',
  //     'assets/images/testimonials-2.jpg',
  //     'assets/images/bg-showcase-3.jpg',
  //     'assets/images/testimonials-1.jpg',
  //     'assets/images/loading.gif',
  //     'assets/images/infinity-9.5s-200px.gif',

  // ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.black,
            elevation: 10.0,
            child: Icon(
              Icons.event_available
            ),
          )],
        
        backgroundColor: Colors.black,
        title: Text("Darkify",
        style: TextStyle(
          color : Colors.grey,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          
          
          
        ),
        
        textAlign: TextAlign.center,

        
        ),

        

          ),

 

        

        
    
      drawer: Drawer(
        
        elevation: 10.0,
        child: ListView(
          
          children: <Widget>[
            UserAccountsDrawerHeader(
              
              accountName: Text('Emmanuel Umeh'),
              accountEmail: Text("Emmanuelsumeh@gmail.com"),
              
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              )
            ),

            InkWell(
              
              child: ListTile(
                
                trailing: Icon(
                  Icons.wallpaper,
                  color: Colors.grey,
                ),
                leading: Text(
                  "Wallpapers",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                )
              )
            ),

            InkWell(
              child: ListTile(
                leading: Text(
                  "Favourites",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
                
              )
            ),

            InkWell(
              child: ListTile(
                leading: Text(
                  "Share App",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                trailing: Icon(
                  Icons.share,
                  color: Colors.green
                ),
              )
            ),

            InkWell(
              child: ListTile(
                leading: Text(
                  "Rate Us",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                trailing: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              )
            ),

            InkWell(
              child: ListTile(
                leading: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                trailing: Icon(
                  Icons.warning,
                  color: Colors.grey,
                ),
              )
            ),

            InkWell(
              child: ListTile(
                leading: Text(
                  "Exit",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                trailing: Icon(
                  Icons.exit_to_app,
                  color: Colors.red
                ),
              )
            ),



          ],
        ),
      ),


    
     

      

      

    

      body:
       Body(),
    );
  }

}

