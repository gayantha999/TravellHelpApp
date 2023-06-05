import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/HomeAppar.dart';
import '../widgets/HomeBottombar.dart';



class HomePage extends StatelessWidget {
  List<String>cities=["Trincomalee","Kandy","Ella","Jaffna","Jaffna Library","Jaffna Kovil"];
  var travelCategory =["Best Places","Most Visited","Favourite", "Hotels","Restaurants","New Added"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container(
                      height: 250,

                      child: ListView.builder(
                        itemCount: 6,
                          scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context,int index){
                          return InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width: 160,
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.only(left:15),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(image: AssetImage("images/city${index+1}.jpg"),
                                fit: BoxFit.cover,
                                opacity: 0.7,
                                )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      cities[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )),
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int i =0; i<6; i++ )
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 7,
                            )
                          ]
                        ),
                        child: Text(
                          travelCategory[i],
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                        padding:EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("images/city${index+1}.jpg"),
                                fit: BoxFit.cover,
                                opacity: 0.7,
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(cities[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            Icon(Icons.more_vert,
                            size: 30,),
                          ],
                        ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [Icon(Icons.star,
                          color: Colors.amberAccent,
                          size: 22,
                          ),
                            Text("5.0",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                    );
                  }
                )

              ],
            ),
          ),


        ),
      ),
      bottomNavigationBar: HomeBottombar(),
    );
  }
}
