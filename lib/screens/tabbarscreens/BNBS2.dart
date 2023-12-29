import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
        elevation: 0,
        toolbarHeight: 90,
        leading: Text(""),
        floating: true, //scroll up kerne pe immediately aayega
        pinned: true, //app bar will be pinned always
        expandedHeight: 150,
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Stack(
            children: [
              // Dark shade container
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(66, 200, 60, 1),
                      Color.fromRGBO(27, 27, 27, 1)
                    ],
                  ),
                ),
              ),
            ],
          ),
          title: //TextField - 1
              Container(
            height: 50,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromRGBO(255, 255, 255, 0.14)),
                ),
                height: 80,
                child: const TextField(
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  cursorColor: Colors.green,
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                    
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      contentPadding: EdgeInsets.all(14)),
                ),
              ),
            ),
          ),
        ),
      ),
      

      RectangleGrid()
    ]);
  }
}



class RectangleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Color.fromRGBO(27, 27, 27, 1), // Color of the rectangle
            height: 100.0, // Height of each rectangle
            width: 100.0, // Width of each rectangle
            child: Center(
              child: Column(
                children: [
                  Image.asset("images/grid1.png"),
                  SizedBox(height: 6,),
                  Text("Rock Mix", style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),)
                ],
              )
            ),
          );
        },
        childCount: 10, // Number of rectangles in the grid
      ),
    );
  }
}
