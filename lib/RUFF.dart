import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var nameCotroller = TextEditingController();
  var passCotroller = TextEditingController();
  var  isEnabled = true;

  get enabled => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wheel Faster"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            SizedBox(
              height: 11,
            ),
            TextField(
                controller: nameCotroller,
                maxLength: 20,
                maxLines: 1,
                /* onChanged: (value){
  print(value);
}*/
                decoration: InputDecoration(
                  //counterText: "",
                  prefix: Text(""),
                  prefixIcon: Icon(Icons.looks_6 ),
                  prefixIconColor: Colors.blue,
                  suffixText: "@gmail.com",
                  enabled: isEnabled,
                  label: Text("Name,mobile no"),
                  labelStyle: TextStyle(color: isEnabled ? Colors.blue : Colors.grey),
                  hintText: "Enter your name here",
                  hintStyle: TextStyle(fontStyle: FontStyle.normal),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2
                      )
                  ),
                  disabledBorder : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2
                    ),
                  ),
                )),

            SizedBox(
              height: 11,
            ),
            TextField(
              controller: passCotroller,
              obscureText: true,
              obscuringCharacter: "*",

              keyboardType: TextInputType.emailAddress,
/*onChanged: (value){
    print(value);
},*/

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                prefixIconColor: Colors.blue,
                 suffixIcon: Icon(Icons.visibility_off),
                enabled: isEnabled,
                label: Text("Password"),
                labelStyle: TextStyle(color: isEnabled ? Colors.blue : Colors.grey),
                hintText: "Enter your password here",
                hintStyle: TextStyle(fontStyle: FontStyle.normal),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 11,
            ),


            ElevatedButton(onPressed: ()=> print("${nameCotroller.text.toString()},${passCotroller.text.toString()}"),
                child: Text('Enter')),

          ],
        ),
      ),
    );
  }
}
