import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  double hight=100,Weight=98,Age=30,bmi=0;
  int index=0;
  List<String> T=["BMI","Login","MATH"];


  @override
  Widget build(BuildContext context) {
    var xwidth= MediaQuery.of(context).size.width;
    int m = ModalRoute.of(context)?.settings.arguments as int? ?? 0;
    index=m;
    return  Scaffold(
      appBar: AppBar(
        leading: Text(""),
        title: Text("${T[index]}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.cyan,
        // leading: Icon(Icons.ice_skating),
      ),
      body: Container(
        color: Color(0xff0a0e21),
        child: Column(
          children: [
            //1st Container Gender
            Expanded(
              child: Container(
                color: Color(0xff0a0e21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      //male box
                      margin: EdgeInsets.all(10),
                      width: xwidth*0.5-50,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff1d1e33),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.male,size: 100,color: Color(0xffffffff),),
                          Text("Male",style: TextStyle(fontSize: 20,color: Color(0xffffffff) ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      //Female box
                      margin: EdgeInsets.all(10),
                      width:xwidth*0.5-50,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff1d1e33),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.female,size: 100,color: Color(0xffffffff),),
                          Text("Female",style: TextStyle(fontSize: 20,color: Color(0xffffffff) ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //2nd Container Slider
            Expanded(
              child: Container(
                color: Color(0xff0a0e21),
                child: Container(
                  width: xwidth,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff1d1e33)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Height",style: TextStyle(fontSize: 20,color: Color(0xffffffff)),),
                      Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("${hight.round()}",style: TextStyle(fontSize: 40,color: Color(0xffffffff)),),
                            SizedBox(width: 10,),
                            Text("cm",style: TextStyle(fontSize: 40,color: Color(0xffffffff)),),]),
                      Slider(
                          activeColor: Color(0xffeb1555),
                          min: 50,
                          max: 200,
                          value: hight,
                          onChanged:(val){
                            setState(() {
                              hight=val;
                            });
                          }),
                    ],
                  ),
                ),

              ),
            ),
            //3rd container wight and age
            Expanded(
              child: Container(
                color: Color(0xff0a0e21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      //weight box
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      width: xwidth*0.5-50,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff1d1e33),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text("Weight",style: TextStyle(fontSize: 20,color: Color(0xff686977) ),),
                          Text("$Weight",style: TextStyle(fontSize: 40,color: Color(0xffffffff),fontWeight: FontWeight.bold ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  Weight++;
                                });
                              } ,shape: CircleBorder(),backgroundColor: Color(0xff4c4f5e),child: Text("+",style: TextStyle(fontSize: 20,color: Color(0xffffffff) ),),),
                              SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  Weight--;
                                  if (Weight<0){
                                    Weight=0;
                                  };
                                });
                              } ,shape: CircleBorder(),backgroundColor: Color(0xff4c4f5e),child: Text("-",style: TextStyle(fontSize: 20,color: Color(0xffffffff) ),),),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      //Age box
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      width: xwidth*0.5-50,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff1d1e33),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Age",style: TextStyle(fontSize: 20,color: Color(0xff686977) ),),
                          Text("$Age",style: TextStyle(fontSize: 40,color: Color(0xffffffff),fontWeight: FontWeight.bold ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  Age++;
                                });
                              } ,shape: CircleBorder(),backgroundColor: Color(0xff4c4f5e),
                                child: Text("+",style: TextStyle(fontSize: 20,color: Color(0xffffffff) ),),),
                              SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  Age--;
                                  if (Age<0){
                                    Age=0;
                                  };
                                });
                              } ,shape: CircleBorder(),backgroundColor: Color(0xff4c4f5e),
                                child: Text("-",style: TextStyle(fontSize: 20,color: Color(0xffffffff) ),),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Calculate
            InkWell(

              onTap: (){
                double Mhight=hight/100;
                bmi=Weight/(Mhight*Mhight);
                print(bmi);
                Navigator.pushNamed(context, "s2",arguments: bmi);
                // Navigator.pushReplacement(context, newRoute)
              },
              child: Container(
                alignment: Alignment.center,
                width: xwidth,
                height: 50,
                color: Color(0xffeb1555),
                child: Text("Calculate",style: TextStyle(fontSize: 30,color: Color(0xffffffff),fontWeight: FontWeight.bold ),),
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Colors.cyan,
          selectedItemColor: Colors.red,
          onTap: (int y){
            setState(() {
              index=y;
              if(index==0){
                Navigator.pushNamed(context, "s1",arguments: index);
              }
              else if(index==1){
                Navigator.pushNamed(context, "s3",arguments: index);
              }
               else if(index==2){
                Navigator.pushNamed(context, "s4",arguments: index);
              }
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.fitness_center),label: "BMI"),
            BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Math"),
          ],
        )
    );
  }
}