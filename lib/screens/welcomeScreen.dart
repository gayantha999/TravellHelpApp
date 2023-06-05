import 'package:flutter/material.dart';

import 'HmePage.dart';


class welcomeScreen extends StatelessWidget implements HomePage {

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:AssetImage("images/sigiriya BG.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7)
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("W E L C O M E",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
              ),
              SizedBox(height: 2,),
              Text("S R I L A N K A",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 35,
                fontWeight: FontWeight.w500,
                letterSpacing: 2
              ),),

              SizedBox(height: 15,),
              Text("Sri Lanka is an island nation located in the Indian Ocean, "
                  "just off the southeastern coast of India. Despite its modest"
                  " size—slightly larger than the state of West Virginia—Sri Lanka"
                  " has a population of about 20 million people, almost equal to the population of Texas.",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
                letterSpacing: 1.2,
              ),),
              SizedBox(height:30),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>HomePage(),
                  ));
                },
                child: Ink(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              )

            ],
          ),),
        ),
      ),
    );
  }

  @override
  late List<String> cities;

  @override
  late List<String> travelCategory;
}
