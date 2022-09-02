import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/config/platte.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green.shade100,
        child: Column(
           children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  gradient: Platte.bgGradient,
                  //image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/cover.jpg"))
                ),
              ),
              _buildListTile(Icons.home, "Home", onTap: () => null, ),
              _buildListTile(Icons.favorite, "Favorite", onTap: null),
              _buildListTile(Icons.star_rate, "Rating", onTap: null),
              _buildListTile(Icons.share, "Share App", onTap: null),
              
              
           ],
           


        ),
      ),
      
    );
  }

   Widget _buildListTile(IconData leading, String title, {required Function()? onTap}){
     return ListTile(
       onTap: onTap,
       leading: CircleAvatar(
         backgroundColor: Colors.green.shade200,
         child: Icon(leading, color : Colors.white),
       ),
       title: Text(title, style: TextStyle(color: Colors.green.shade500, fontWeight: FontWeight.bold, fontSize: 16),),
       trailing: Icon(Icons.navigate_next, color: Colors.green.shade500,),
     );
   }

}