import 'package:flutter/material.dart';
class calcPage extends StatefulWidget {
  calcPage({super.key});

  @override
  State<calcPage> createState() => _calcPageState();
}

class _calcPageState extends State<calcPage> {
  int index=0;

  List<String> T=["BMI","Login","MATH"];

  @override
  Widget build(BuildContext context) {
    double bmi=ModalRoute.of(context)!.settings.arguments as double;
    String t=bmi.toStringAsFixed(2);
    var xwidth= MediaQuery.of(context).size.width;
    Map<String,String>request=BMIrequest(bmi);
    String? type=request["key"];
    String? Msg=request["MSG"];
    return  Scaffold(
        appBar: AppBar(
          leading: Text(""),
          title: Text("${T[index]}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.cyan,
          // leading: Icon(Icons.ice_skating),
        ),
      body: Column(
        children: [

          // Calculate
          Container(
            alignment: Alignment.center,
            width: xwidth,
            height: 50,
            color: Color(0xff0a0e21),
            child: Text("Your Result",style: TextStyle(fontSize: 30,color: Color(0xffffffff),fontWeight: FontWeight.bold ),),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: xwidth,
              height: 50,
              color: Color(0xff0a0e21),
              child: Container(
                margin: EdgeInsets.all(20),
                width: xwidth,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff1d1e33)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("$type",style: TextStyle(fontSize: 30,color: Color(0xff24d975),fontWeight: FontWeight.bold ),),
                    Text("$t",style: TextStyle(fontSize: 50,color: Color(0xffffffff),fontWeight: FontWeight.bold ),),
                    Text("$Msg",style: TextStyle(fontSize: 15,color: Color(0xffffffff),),),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              alignment: Alignment.center,
              width: xwidth,
              height: 50,
              color: Color(0xffeb1555),
              child: Text("Re-Calculate",style: TextStyle(fontSize: 20,color: Color(0xffffffff),fontWeight: FontWeight.bold ),),
            ),
          ),
        ],
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
        )    );
  }
}

BMIrequest($bmi){
  List<String>BMILevel=["UnderWeight","Normal","OverWeight","Obese","extremelyObese"];
  List<String>BMIMsg=["you are UnderWeight need to gain more weight","you are Normal, Good Job!"," you are OverWeight you just need to lose  some weight",
    " you are Obese you have to lose alot of weight"," you are extremelyObese you life in dangerous"];

  Map<String, String> x=Map();
  if($bmi>0&&$bmi<18.5){
    x["MSG"]=BMIMsg[0];
    x["key"]=BMILevel[0];
  }
  else if($bmi >=18.5&&$bmi<=24.9){
    x["MSG"]=BMIMsg[1];
    x["key"]=BMILevel[1];
  }
  else if($bmi >24.9&&$bmi<=29.9){
    x["MSG"]=BMIMsg[2];
    x["key"]=BMILevel[2];
  }
  else if($bmi >29.9&&$bmi<=35){
    x["MSG"]=BMIMsg[3];
    x["key"]=BMILevel[3];
  }
  else if($bmi >35){
    x["MSG"]=BMIMsg[4];
    x["key"]=BMILevel[4];
  }
  return x;
}
