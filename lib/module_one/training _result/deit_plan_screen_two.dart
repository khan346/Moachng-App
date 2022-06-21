
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moaching_app/custom_widget/custom_navigation_bar.dart';
import 'package:moaching_app/model/model_one.dart';
import 'package:moaching_app/module_one/training%20_result/your_macronumber.dart';


class DietPlanScreenTwo extends StatefulWidget {
  const DietPlanScreenTwo({Key? key}) : super(key: key);

  @override
  _DietPlanScreenTwoState createState() => _DietPlanScreenTwoState();
}

class _DietPlanScreenTwoState extends State<DietPlanScreenTwo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>YourMacronuber()));
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
                padding: const EdgeInsets.only(left: 8,right: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: itemData.length,
                    itemBuilder: (_, index) =>
                        Card(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(itemData[index].itemimages),
                          backgroundColor: Colors.transparent,
                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              itemData[index].name_item,style: TextStyle(fontSize: 20,
                                            ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(Icons.circle,
                                                          size: 10,
                                                          color: Color(0xff3A9090),
                                                        ),
                                                        SizedBox(width: 5,),
                                                        Text("Proteins")
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Text("530",style: TextStyle(),)
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(Icons.circle,
                                                          size: 10,
                                                          color: Colors.red,
                                                        ),
                                                        SizedBox(width: 5,),
                                                        Text("Fat")
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("103")
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(Icons.circle,
                                                          size: 10,
                                                          color: Colors.amber,
                                                        ),
                                                        SizedBox(width: 5,),
                                                        Text("Carbs")
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("250")
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundImage: AssetImage(itemData[index].femalimages),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                          itemData[index].femalename,style: TextStyle(fontSize: 20,
                                        ),
                                        ),

                                  ],
                                ),

                              ],
                            ),


                          ),
                        ),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
