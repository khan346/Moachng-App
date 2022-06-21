import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moaching_app/custom_widget/custom_navigation_bar.dart';
import 'package:moaching_app/module_one/training%20_result/now_screen.dart';

class ExcirsesScreen extends StatefulWidget {
  const ExcirsesScreen({Key? key}) : super(key: key);

  @override
  _ExcirsesScreenState createState() => _ExcirsesScreenState();
}

class _ExcirsesScreenState extends State<ExcirsesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back,size: 20,),
                    Text("Exercises",style: TextStyle( color: Color(0xff3A9090),
                      fontSize: 22,fontWeight: FontWeight.w600,
                    )),
                    Icon(Icons.list)
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NowScreen()));
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                      image: new AssetImage("images/module_one_image2.PNG"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(

                    children: [
                      Positioned(

                        left: 10,
                        right: 10,
                        top: 160,
                        bottom: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("01:23",style: TextStyle(color: Colors.grey,
                            ),),
                            Text("05:00",style: TextStyle(color: Colors.grey,
                            ),),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text("Flate DB Bench Press",style: TextStyle( color: Color(0xff3A9090),
                     fontSize: 22,fontWeight: FontWeight.w600,
                   )),
                   Text("Lorem ipsum dolor sit amet, consetetur sadipicing elitr,"
                       "sedi Drem ipsum dolor sir amet, consetetur sadipsicing elite sedi orem ipsum",
                     style: TextStyle(color: Colors.grey),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Text("Equipment",style: TextStyle( color: Color(0xff3A9090),
                     fontSize: 18,fontWeight: FontWeight.w600,
                   )),
                   SizedBox(
                     height: 5,
                   ),
                   Text("Dumbbell, On Brench",style: TextStyle(color: Colors.grey)),
                   SizedBox(
                     height: 15,
                   ),
                   Text("Instruction",style: TextStyle( color: Color(0xff3A9090),
                     fontSize: 18,fontWeight: FontWeight.w600,
                   )),
                   SizedBox(
                     height: 10,
                   ),

                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       Icon(Icons.circle,
                       size: 12,
                         color: Color(0xff3A9090),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       Icon(Icons.circle,
                         size: 12,
                         color: Color(0xff3A9090),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       Icon(Icons.circle,
                         size: 12,
                         color: Color(0xff3A9090),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       Icon(Icons.circle,
                         size: 12,
                         color: Color(0xff3A9090),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       Icon(Icons.circle,
                         size: 12,
                         color: Color(0xff3A9090),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),



                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
