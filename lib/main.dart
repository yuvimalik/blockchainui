import 'package:blockchain/mining.dart';
import 'package:blockchain/transactions.dart';
import 'package:blockchain/voting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';






void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);







  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: MaterialColor(0xFF000000,
        <int, Color>{
          50: Color(0xFF000000),
          100: Color(0xFF000000),
          200: Color(0xFF000000),
          300: Color(0xFF000000),
          400: Color(0xFF000000),
          500: Color(0xFF000000),
          600: Color(0xFF000000),
          700: Color(0xFF000000),
          800: Color(0xFF000000),
          900: Color(0xFF000000),
        },),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.transparent
      ),
    ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void changebalance(newbalance){
    setState(() {
      balance = newbalance;
    });


  }



  static const colorpurple = Color(0xff282032);
  static const colorblue = Colors.black54;
  static const colorpurple2 = Color(0xff65507C);
  static const colorblue2 = Color(0xff376995);
  var isShowingMainData = true;
  String balance = "19.00";
  void updatetransactions(list){
    listoftransactions = list;
  }

  List listoftransactions = [[10, "Yuv", "James"],[10, "James", "Yuv"], ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });*/
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black87,


      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/5,
              color: Colors.black54,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height/5,
                      width: MediaQuery.of(context).size.width/6,
                      child: Image.asset(

                          "logo.png"

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(

                      title: Text(
                        'Home',
                        style: GoogleFonts.sora(

                          fontSize: 12, color: Colors.white


                        ),

                      ),


                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),


                    ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(
                        'Transactions',
                        style: GoogleFonts.sora(

                          fontSize: 12,
                          color: Colors.white

                        ),
                      ),

                      onTap: () {
                        // Update the state of the app.
                        // ...
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SecondRoute()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(
                        'Voting',
                        style: GoogleFonts.sora(

                            fontSize: 12,
                            color: Colors.white

                        ),
                      ),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Voting()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(
                        'Mining',
                        style: GoogleFonts.sora(

                            fontSize: 12,
                            color: Colors.white

                        ),
                      ),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Mining()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width*0.7,
                      decoration: BoxDecoration(
                        color: colorblue.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                      "Balance",
                                      style: GoogleFonts.sora(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white


                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.3, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.refresh,
                                          color: Colors.white,
                                        ),
                                        onPressed: (){
                                          changebalance(balance);//checkbalance

                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                              child: Text(
                                "$balance",
                                style: GoogleFonts.sora(
                                    fontSize: 42,

                                    color: Colors.white


                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),


                        ],
                      ),


                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.37,
                    width: MediaQuery.of(context).size.width*0.73,


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: MediaQuery.of(context).size.width /
                                (MediaQuery.of(context).size.height / 6),

                          ),
                          itemCount: (SecondRoute.listoftransactions.length).toInt(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height*0.05,
                                decoration: BoxDecoration(
                                    color: colorblue.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Amount : ${SecondRoute.listoftransactions[index][0]}",
                                      style: GoogleFonts.sora(
                                          fontSize: 10,
                                          color: Colors.white

                                      ),
                                    ),
                                    Text(
                                      "Sender : ${SecondRoute.listoftransactions[index][1]}",
                                      style: GoogleFonts.sora(
                                          fontSize: 10,
                                          color: Colors.white

                                      ),
                                    ),
                                    Text(
                                      "Recipient : ${SecondRoute.listoftransactions[index][2]}",
                                      style: GoogleFonts.sora(
                                          fontSize: 10,
                                          color: Colors.white

                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


