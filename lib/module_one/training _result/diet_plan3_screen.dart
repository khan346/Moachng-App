import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moaching_app/custom_widget/custom_navigation_bar.dart';

import 'add_to_breakfast.dart';

class DietPlan3Screen extends StatefulWidget {
  const DietPlan3Screen({Key? key}) : super(key: key);

  @override
  _DietPlan3ScreenState createState() => _DietPlan3ScreenState();
}

class _DietPlan3ScreenState extends State<DietPlan3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.book_outlined,
                    size: 20,),
                  Text("Diet Plans",style: TextStyle( color: Color(0xff3A9090),
                    fontSize: 22,fontWeight: FontWeight.w600,
                  )),
                  Icon(Icons.stop_circle),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width/2.3,
                    decoration: BoxDecoration(
                        color: Color(0xff3A9090),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("03 Aprile 2022",style: TextStyle(color: Colors.white),)),

                  ),
                  Text("   ")
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Color(0xff3A9090),
                    child: Text("2365 kcal Goal",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                    fontSize: 12
                    ),),
                  ),
                  Text("-",style: TextStyle(color: Color(0xff3A9090),fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Color(0xff3A9090),
                    child: Text("0 kcal Food",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontSize: 12
                      ),),
                  ),
                  Text("+",style: TextStyle(color: Color(0xff3A9090),fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Color(0xff3A9090),
                    child: Text("5 kcal Motion",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontSize: 12
                      ),),
                  ),
                  Text("=",style: TextStyle(color: Color(0xff3A9090),fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Color(0xff3A9090),
                    child: Text("2370 kcal Remaining",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontSize: 12
                      ),),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3.33,
                      decoration: BoxDecoration(
                        color: Color(0xff3A9090),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        )
                      ),
                      child: Center(child: Text("BreakFast")),
                    ),
                    Container(
                      child: Text("Snack"),
                    ),
                    Container(

                      child: Text("Dinner"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToBreakfast()));

                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                      color: Color(0xff3A9090),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(child: Text("Add to Breakfast",style: TextStyle(

                      color: Colors.white),)),

                ),
              ),
              SizedBox(
                height: 90,
              ),


                 Center(child: Text("Info About Kcal Calculation",style: TextStyle(
                   decoration: TextDecoration.underline,
                   color: Color(0xff3A9090),),)),

            ],
          ),
        ),
      ),
    );
  }
}
