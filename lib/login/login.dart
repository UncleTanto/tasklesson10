import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
   loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  int index=0;
  List<String> T=["BMI","Login","MATH"];

  @override
  Widget build(BuildContext context) {
    index=ModalRoute.of(context)!.settings.arguments as int;
    return  Scaffold(
      backgroundColor: Color(0xffeb6100),
      appBar: AppBar(
        leading: Text(""),
        title: Text("${T[index]}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.cyan,
        // leading: Icon(Icons.ice_skating),
      ),
        body: Column(
          children: [
            Expanded(child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(fontSize: 40,color: Color(0xffffffff)),),
                  Text("welcome Back",style: TextStyle(fontSize: 20,color: Color(0xffffffff)),),
                ],
              ),
            )),
            Expanded(child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Container(

                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.only(left: 9,right: 9),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xfffbe3d9).withOpacity(.9),
                            spreadRadius: 5,
                            blurRadius: 20,
                            offset: Offset(0,2),
                          )
                        ]
                    ),
                    width: 300,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText:'Email or Phone number',
                            border:UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder:UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),

                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText:'Password',
                            border:InputBorder.none,

                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),
                  Text("Forgot password?",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(height: 15),

                ],
              ),
            )),
            Expanded(child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 190,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(

                          backgroundColor: Color(0xffe65100),
                          foregroundColor: Color(0xff000000),
                          textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff000000))
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding:  EdgeInsets.only(top: 50,bottom: 50),
                    child: Text("Continue with social Media",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      //Facebook button
                      SizedBox(
                        width: 190,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Facebook'),
                          style: ElevatedButton.styleFrom(

                              backgroundColor: Color(0xff2197ef),
                              foregroundColor: Color(0xff000000),
                              textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff000000))
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 190,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Github'),
                          style: ElevatedButton.styleFrom(

                              backgroundColor: Color(0xff000000),
                              foregroundColor: Color(0xffffffff),
                              textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff000000))
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                //
              ),
            ))
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
