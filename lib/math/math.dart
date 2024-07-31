import 'package:flutter/material.dart';

class mathapp extends StatefulWidget {
  const mathapp({super.key});

  @override
  State<mathapp> createState() => _mathappState();
}

class _mathappState extends State<mathapp> {

  double result=0;
  var num1=TextEditingController();
  var num2=TextEditingController();
  bool x=false;
  bool x2=false;
  int index=0;
  List<String> T=["BMI","Login","MATH"];

  @override
  Widget build(BuildContext context) {
    index=ModalRoute.of(context)!.settings.arguments as int;
    double number,number2;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Text(""),
        title: Text("${T[index]}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.cyan,
        // leading: Icon(Icons.ice_skating),
      ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    color: Color(0xff007c6b)
                ) ,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: num1,
                        decoration: InputDecoration(
                          hintText: 'Num1',
                          label: Row(
                            children: [
                              Text("Num1 "),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),

                        ),

                      ),
                      SizedBox(height:10),
                      TextFormField(
                        controller: num2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Num2',
                          label: Row(
                            children: [
                              Text("Num2 "),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),

                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration:BoxDecoration(
                    color: Color(0xffffffff)
                ) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 20,
                      color: Colors.green[900],
                    ),
                    Container(
                      child: Text("Result = $result"),
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      color: Colors.green[900],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Color(0xff007c6b)
                ) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        number=double.parse(num1.text);
                        number2=double.parse(num2.text);
                        result=reustfunction(number,number2,"+");
                      });
                    } ,child: Text("+",style: TextStyle(fontSize: 20,color: Color(0xff000000),fontWeight: FontWeight.bold ),),),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        number=double.parse(num1.text);
                        number2=double.parse(num2.text);
                        result=reustfunction(number,number2,"-");
                      });
                    } ,child: Text("-",style: TextStyle(fontSize: 20,color: Color(0xff000000),fontWeight: FontWeight.bold ),),),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        number=double.parse(num1.text);
                        number2=double.parse(num2.text);
                        result=reustfunction(number,number2,"*");
                      });
                    } ,child: Text("x",style: TextStyle(fontSize: 20,color: Color(0xff000000),fontWeight: FontWeight.bold ),),),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        number=double.parse(num1.text);
                        number2=double.parse(num2.text);
                        result=reustfunction(number,number2,"/");
                      });
                    } ,child: Text("/",style: TextStyle(fontSize: 20,color: Color(0xff000000),fontWeight: FontWeight.bold ),),),
                  ],
                ),
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
        )
    );
  }
}



reustfunction(double n1,double n2, String op){
  double re=0;

  if(op=='+') re=n1+n2;
  else if(op=='-') re=n1-n2;
  else if(op=='*') re=n1*n2;
  else if(op=='/') re=n1/n2;
  return re;

}