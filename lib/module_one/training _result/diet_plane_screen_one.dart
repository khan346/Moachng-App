import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moaching_app/custom_widget/custom_navigation_bar.dart';

import 'deit_plan_screen_two.dart';

class DietPlanScreenone extends StatefulWidget {
  const DietPlanScreenone({Key? key}) : super(key: key);

  @override
  _DietPlanScreenoneState createState() => _DietPlanScreenoneState();
}

class _DietPlanScreenoneState extends State<DietPlanScreenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DietPlanScreenTwo ()));
                    },
                    child: Icon(Icons.arrow_forward_ios,
                      size: 20,),
                  ),
                  Text("Diet Plans",style: TextStyle( color: Color(0xff3A9090),
                    fontSize: 22,fontWeight: FontWeight.w600,
                  )),
                  Text(""),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(child: const Text("You have not yet received a deiat plan from your specialist :( ",
              textAlign: TextAlign.center,
              )),
            ),
            Text(""),

          ],
        ),
      ),
    );
  }
}
