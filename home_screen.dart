import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/models/newbook_model%20.dart';
import 'package:project/models/recentbook_model.dart';
import 'package:project/models/searchbook_model.dart';
import 'package:project/screen/selected_book_screen.dart';
import 'package:project/screen/selected_booksearch_screen.dart';

import '../models/popularbook_model.dart';
import '../widgets/custom_tab_indicator.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override 
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
with TickerProviderStateMixin {

  @override 
  // ignore: unused_element
  Widget build(BuildContext context){

    // ignore: no_leading_underscores_for_local_identifiers
    TabController _tabController = 
    TabController(length: 2, vsync: this);
    
    
    return Scaffold(
      body: SafeArea(
      // ignore: avoid_unnecessary_containers
      child: Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget> [
          Padding(
          padding: const EdgeInsets.only(left: 25, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
            Text(
          'Welcome to', 
          style: GoogleFonts. poppins(
          fontSize: 10,
          fontWeight: FontWeight.w600,
            color:  const Color.fromRGBO(153, 205, 205, 1),),
            ),
            
            Text(
          'Information Resource Centre (IRC)', 
          style: GoogleFonts. poppins(
          fontSize: 12,
          fontWeight: FontWeight.bold,
            color:  Colors.black),
            ),
            ],
            )
          ),
          
          Container(
            height: 39,
            margin: const EdgeInsets.only(left: 25, right: 25, top: 18),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(245, 245, 245, 0.87)),
    
            child:Stack(
               children: <Widget> [
                 TextField(          
                   //onChanged: searchBook,        
                   maxLengthEnforcement: MaxLengthEnforcement.enforced,
                   style: GoogleFonts.poppins(
                   fontSize: 12,
                   fontWeight: FontWeight.w600
                ),
                   decoration:InputDecoration(
                    contentPadding: 
                      const EdgeInsets.only(left: 19, right: 50, bottom: 15),
                    border: InputBorder.none,
                    hintText: 'Search book..',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 9.5,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                      suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        showSearch(
                          context: context, 
                          delegate: CustomSearch()
                          
                      );
                      }
              ),
            ))],
            ),
          ),
          
           Container(
            height: 25,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 25),
              child: TabBar(
                  labelPadding: const EdgeInsets.all(0),
                  indicatorPadding: const EdgeInsets.all(0),
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
                  
                  unselectedLabelStyle: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600 ),
                    indicator: RoundedRectangleTabIndicator(
                      weight: 2,
                      width: 10,
                      color: Colors.black),
                  tabs: [
                Tab(
                  child: Container(
                    margin: const EdgeInsets.only(right: 23),
                    child: const Text('New'),
                  ),
                ),
                Tab(
                  child: Container(
                    margin: const EdgeInsets.only(right: 23),
                    child: const Text('Popular'), 
                  ),
                ),
              ]),  
              ),

           // ignore: avoid_unnecessary_containers
           Container(
            margin: const EdgeInsets.only(top: 21),
            height: 210,
            width: 153,
            child: TabBarView(
              controller: _tabController,
            children: [ListView.builder(
              padding: const EdgeInsets.only(left: 25, right: 6),
              itemCount: newbooks.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return Container(
                margin: const EdgeInsets.only(right: 19),
                height: 210,
                width: 153,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:  const Color.fromRGBO(250, 250, 250, 1),
                  image:  DecorationImage(
                    image: AssetImage(newbooks[index].image),
                )),
              );
            }),
            ListView.builder(
              padding: const EdgeInsets.only(left: 25, right: 6),
              itemCount: popularsbooks.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return Container(
                margin: const EdgeInsets.only(right: 19),
                height: 210,
                width: 153,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:  const Color.fromRGBO(250, 250, 250, 1),
                  image:  DecorationImage(
                    image: AssetImage(popularsbooks[index].image),
                )),
              );
            }),
        ])),

            Padding(
             padding: const EdgeInsets.only(left: 25, top: 25),
             child: Text(
                  'Recent', 
                   style: GoogleFonts. poppins(
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                   color:  Colors.black),
            ),        
           ),
           ListView.builder(
            padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: recents.length,
            itemBuilder: (context, index){
             return GestureDetector(
              onTap: () {
                // ignore: avoid_print
                print('ListView Tapped');
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SelectedBookScreen(
                      recentBookModel: recents[index], key: null,),
                    ),
                  );
              },
            child: Container(
              margin: const EdgeInsets.only(bottom: 19),
              height: 81,
              width: MediaQuery.of(context).size.width-50,
              color: const Color.fromRGBO(250, 250, 250, 1),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 81,
                    width: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(recents[index].image),
                        ),
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        ),
                    ),
                    
                    const SizedBox(width: 21,),

                    Expanded(
                      child: Padding
                      (padding: const EdgeInsets.only(left: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          recents[index].title,
                          style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                          ),
                          const SizedBox(height: 3,),
                        Text(
                          recents[index].author, 
                          style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(157, 157, 157, 1)),
                          ),
                          const SizedBox(height: 3,),
                        
                        Text(
                          recents[index].year, 
                          style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(157, 157, 157, 1)),
                          ),
                    ],
                    ),
              ),
              )],
            )));
           }),
      ]),
      )));
  }
}

class CustomSearch extends SearchDelegate {


List<String> bookSearch = [
"Data Analysis for Network Cyber-security", 
"Cyber security and IT infrastructure protection", 
"Cyber security",
"Cyber security : economic strategies and public policy alternatives",
"Cyber Security [electronic resource] : Deterrence and IT Protection for Critical Infrastructures"
];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        }, 
        icon: const Icon(Icons.clear),)
    ];
  }
  @override 
Widget? buildLeading (BuildContext context) {
  return IconButton(
    onPressed: () {
      close(context,null);
    }, 
    icon: const Icon(Icons.arrow_back),
  );
}

@override 
Widget buildResults (BuildContext context) {
  List<String> matchQuery = [];
  for (var book in bookSearch ) {
    if (book.toLowerCase ().contains(query.toLowerCase())) {
      matchQuery .add(book);
    }
  }

  return ListView.builder(
    itemCount: matchQuery.length,
    itemBuilder: (context, index) {
       var result= matchQuery [index];       
       return ListTile(
      title: Text(result),
        onTap: () {
                // ignore: avoid_print
                print('ListView Tapped');
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SelectedBookSearchScreen(
                      searchBookModel: search[index], key: null,),
                    ),
                  );
              },
                 );   
}
);
}

@override
Widget buildSuggestions (BuildContext context) {
   List<String> matchQuery = [];
  for (var book in bookSearch ) {
    if (book.toLowerCase ().contains(query.toLowerCase())) {
      matchQuery.add(book);
    }
  }
  
return ListView.builder(
    itemCount: matchQuery.length,
    itemBuilder: (context, index) {
       final result= matchQuery[index];       
       return ListTile(
      title: Text(result),
      onTap: () {
                // ignore: avoid_print
                print('ListView Tapped');
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SelectedBookSearchScreen(
                      searchBookModel: search[index], key: null,),
                    ),
                  );
              },
                 );    
                 
});
}
}