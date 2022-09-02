

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/config/platte.dart';

class StorySearchDelegate extends SearchDelegate<String>{

    static  showSearchAlertDialog(BuildContext context) =>
    showSearch(
      context: context,
      delegate: StorySearchDelegate(hint: "Search...")
      );
  


    StorySearchDelegate({String? hint}):super(
      searchFieldLabel: hint,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      searchFieldDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.green,
        
      ),
    

  );

  @override
  ThemeData appBarTheme(BuildContext? context) {

     
     return ThemeData(
         primarySwatch: Colors.green,
         appBarTheme: AppBarTheme(backgroundColor: Platte.bgColorAppBar)
     );

  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
      onPressed: query.isNotEmpty ? (){
          query = "";
      } : null,
      icon: const Icon(Icons.clear)),
    ] ;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {

       if(query.isNotEmpty){
         return Text("$query!");
       }
      return const Text("Story not found");
  }

  

  @override
  Widget buildSuggestions(BuildContext context) {

       final List<String> searchHistory = [
          "query 1",
          "query 2", 
          "query 3"
       ];
       if(query.isNotEmpty){
         //find story like query... 
         return Center(child: Text(query),);
       }
       return Container(
         padding: const EdgeInsets.all(8),
         width: double.infinity,
         height: double.infinity,
         decoration: BoxDecoration(
           gradient: Platte.bgGradient,
         ),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text("Recent", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                 OutlinedButton(
                   onPressed: ()=>log("Go Search History Screen"),
                   child: const Text("See All"))
               ],
             ),
             Expanded(
               child: ListView.builder(
               itemCount: searchHistory.length,
               itemBuilder: (context, index){
                 return ListTile(
                   onTap: ()=> log("get results"),
                   contentPadding: EdgeInsets.zero,
                   leading: const Icon(Icons.search_outlined),
                   title: Text(searchHistory[index]),
                   trailing: IconButton(
                     onPressed: ()=>{
                      //remove item from list history search...

                     },
                     icon: const Icon(Icons.close, size: 14,)),
                 );
               }), 
             
             )
            
           ],
         )
       );
  }

  

}

