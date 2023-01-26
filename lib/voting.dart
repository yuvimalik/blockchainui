import 'package:blockchain/main.dart';
import 'package:blockchain/transactions.dart';
import 'package:blockchain/graph.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Voting extends StatefulWidget {
  // Voting({super.key});

  @override
  State<Voting> createState() => ThirdRoute();
}

class ThirdRoute extends State<Voting> {

  static const colorpurple = Color(0xff282032);
  static const colorblue = Colors.black54;
  static const colorpurple2 = Color(0xff65507C);
  static const colorblue2 = Color(0xff376995);

  TextEditingController addresscontroller = TextEditingController();
  TextEditingController valuecontroller = TextEditingController();

  int upvotes = 0;
  int downvote = 0;


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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  MyHomePage(title: "yo")),
                        );
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
                        print('');
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
                      height: MediaQuery.of(context).size.height*0.4,
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
                              child: Text(
                                "Voting",
                                style: GoogleFonts.sora(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white


                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.1,
                                  width: MediaQuery.of(context).size.width*0.7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                    children: [
                                      Container(

                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(6, 1, 6, 5),
                                          child: TextField(
                                            style: GoogleFonts.sora(color: Colors.white, fontSize: 12),
                                            controller: addresscontroller,
                                            //maxLength: 50,
                                            decoration: InputDecoration(
                                                label: Text("Submit New Idea", style: GoogleFonts.sora(fontSize: 12, color: Colors.white),),
                                                suffixIcon: Icon(Icons.question_answer, color: Colors.white,),
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.transparent), //<-- SEE HERE
                                              ),
                                            ),
                                          ),
                                        ),
                                        height: MediaQuery.of(context).size.height*0.1,
                                        width: MediaQuery.of(context).size.width*0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                      Container(

                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(6, 1, 6, 5),
                                          child: TextField(
                                            style: GoogleFonts.sora(color: Colors.white, fontSize: 12),
                                            controller: valuecontroller,
                                            //maxLength: 50,
                                            decoration: InputDecoration(
                                                label: Text("Username", style: GoogleFonts.sora(fontSize: 12, color: Colors.white),),
                                                suffixIcon: Icon(Icons.drive_file_rename_outline, color: Colors.white,),
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.transparent), //<-- SEE HERE
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.transparent), //<-- SEE HERE
                                              ),
                                              focusColor: Colors.black12,

                                            ),
                                          ),
                                        ),
                                        height: MediaQuery.of(context).size.height*0.1,
                                        width: MediaQuery.of(context).size.width*0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: TextButton(
                                onPressed: (){
                                  print('You sent ${valuecontroller.text} coins to ${addresscontroller.text}');
                                },
                                child: Text(
                                  "Send",
                                  style: GoogleFonts.sora(color: Colors.white, fontSize: 13),
                                ),

                              ),
                            ),
                          )



                        ],
                      ),


                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.47,
                    width: MediaQuery.of(context).size.width*0.73,


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: MediaQuery.of(context).size.width /
                                (MediaQuery.of(context).size.height / 4),

                          ),
                          itemCount: 3,
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
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              GestureDetector(
                                                child: Icon(Icons.arrow_drop_up, color: Colors.white),
                                                onTap: (){
                                                  setState(() {
                                                    upvotes+=1;
                                                  });

                                                },
                                              ),
                                              Text("$upvotes", style: GoogleFonts.sora(fontSize: 8, color: Colors.white),)
                                            ],
                                          ),
                                          Icon(
                                            Icons.receipt,
                                            color: Colors.white,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              GestureDetector(
                                                child: Icon(Icons.arrow_drop_down, color: Colors.white),
                                                onTap: (){
                                                  setState(() {
                                                    downvote+=1;
                                                  });
                                                },
                                              ),
                                              Text("$downvote", style: GoogleFonts.sora(fontSize: 8, color: Colors.white),)
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Idea",
                                      style: GoogleFonts.sora(
                                          fontSize: 10,
                                          color: Colors.white

                                      ),
                                    ),
                                    Text(
                                      "Username",
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