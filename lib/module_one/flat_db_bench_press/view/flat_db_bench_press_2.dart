import 'package:flutter/material.dart';

import '../../../custom_widget/custom_navigation_bar.dart';
import '../../../custom_widget/custom_text.dart';
import '../../utils/style.dart';
import 'flat_db_bench_pause_3.dart';

class FlatDbBenchPress_2 extends StatelessWidget {
  const FlatDbBenchPress_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.clear,color: AppColor.black,),
        title: CustomText(text: "Flat DB Bench Press",
          color: AppColor.appBackGroundColor,size: 20,),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 40,
                    width: 140,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                        ),
                        color:AppColor.appBackGroundColor
                    ),
                    child: Text("Weight",style: TextStyle(fontSize: 18,
                        color: AppColor.white.withOpacity(0.7)),)),
                Container(
                    height: 40,
                    width: 140,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        color:AppColor.appBackGroundColor
                    ),
                    child: Text("Reps",style: TextStyle(fontSize: 18,color: AppColor.white.withOpacity(0.7)),)),


              ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customContainerList(hintText: "0 kg"),
                customContainerList(hintText: "10 Reps"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 40),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xffd5d6d9),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                           hintText: "Note",
                          hintStyle: TextStyle(color: Colors.black)
                      ),

                    )
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FlatDbBenchPress_3()));

                },
                child: Container(
                  height: 45,
                  width: 180,
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.appBackGroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Add",
                    style: TextStyle(color: AppColor.white,fontSize: 16,fontWeight: FontWeight.bold),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  customContainerList({final hintText}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 35,
            width: 120,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(
                 5
                ),
                color:AppColor.appBackGroundColor
            ),
            child: Icon(Icons.add,color: AppColor.white,)
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(
            height: 45,
            width: 120,
            decoration: BoxDecoration(
                color: Color(0xffd5d6d9),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
                padding:  EdgeInsets.only(left: 35),
                child: TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(color: Colors.black)
                  ),

                )
            ),
          ),
        ),

        Container(
            height: 35,
            width: 120,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(
              5
                ),
                color:AppColor.appBackGroundColor
            ),
            child: Icon(Icons.minimize,color: AppColor.white,)
        )


      ],);
  }

}
