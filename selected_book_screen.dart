import 'package:flutter/material.dart';
import 'package:project/models/recentbook_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/custom_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedBookScreen extends StatelessWidget {
  final RecentBookModel recentBookModel;

  const SelectedBookScreen({Key? key, required this.recentBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.transparent,
        child: ElevatedButton(
          onPressed: () {},
           // ignore: sort_child_properties_last
           child: Row(
                            children: <Widget>[
                                Padding(
                                padding: const EdgeInsets.only(left: 120),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'FIND BOOK',
                                      style: GoogleFonts.poppins(fontSize:13, 
                                      color: Colors.white),                                                            
                                     )
                                 ]
                                )
                                ),
                                 SvgPicture.asset(
                                'assets/icons/cube-free-icon-font.svg',
                                fit: BoxFit.contain,
                              ),
      ]
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(153, 205, 205, 1),
        side: const BorderSide( color:Color.fromRGBO(153, 205, 205, 1)), 
              shape: 
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              
      ),
      ),),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: const Color.fromRGBO(153, 205, 205, 1),
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              flexibleSpace: Container(
                color: Color(recentBookModel.color),
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 25,
                      top: 35,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, "/homeScreen");
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: SvgPicture.asset(
                              'assets/icons/angle-small-left.svg'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 62),
                        width: 172,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(recentBookModel.image),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  recentBookModel.title,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),     
              )),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 25),
                child: Text(
                 recentBookModel.author,
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: const Color.fromRGBO(157, 157, 157, 1),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 5, left: 22),
                  child:
                      Text(
                        recentBookModel.year,
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: const Color.fromRGBO(157, 157, 157, 1) ,
                            fontWeight: FontWeight.w400),
                      ), 
                  ),
                 Container(
                height: 28,
                margin: const EdgeInsets.only(top: 15, bottom: 10),
                padding: const EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      labelPadding: const EdgeInsets.all(0),
                      indicatorPadding: const EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w600),
                      indicator: RoundedRectangleTabIndicator(
                          weight: 2, width: 30, color: Colors.black),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 39),
                            child: const Text('About this book'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 39),
                            child: const Text('Reviews'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 39),
                            child: const Text('Recommendation'),
                          ),
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Text(
                  recentBookModel.description,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    height: 2,
                  ),
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}

