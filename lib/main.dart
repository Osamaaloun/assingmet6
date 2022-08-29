import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image image1 = Image(
      image: NetworkImage("https://i.ytimg.com/vi/IZzr1B--dYw/hqdefault.jpg"));
  bool myDefultBool = false;
  bool myDefultBool1 = false;
  bool myDefultBool2 = false;
  bool myDefultBool3 = false;
  bool myDefultBool4 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: ListView(
          children: [
            Container(
              color: Color.fromARGB(255, 138, 54, 23),
              child: Text(
                "chose a  country",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 138, 54, 23),
              width: 200,
              height: 200,
              child: ListView(children: [
                CheckboxListTile(
                  checkColor: Colors.black,
                  isThreeLine: true,
                  activeColor: Colors.white,
                  subtitle: Text(
                    "you will see the country flag",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  title: Text(
                    "jordan",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  value: myDefultBool,
                  onChanged: (val) {
                    setState(() {
                      myDefultBool = val!;
                      if (myDefultBool) {
                        image1 = Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Flag_of_Jordan.svg/1200px-Flag_of_Jordan.svg.png"));
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  checkColor: Colors.black,
                  isThreeLine: false,
                  activeColor: Colors.white,
                  title: Text(
                    " ksa",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ) ,subtitle: Text(
                    "you will see the country flag",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  value: myDefultBool1,
                  onChanged: (val) {
                    setState(() {
                      myDefultBool1 = val!;
                      if (myDefultBool1) {
                        image1 = Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/2560px-Flag_of_Saudi_Arabia.svg.png"));
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  checkColor: Colors.black,
                  isThreeLine: false,
                  activeColor: Colors.white,
                  title: Text(
                    " iraq",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ), subtitle: Text(
                    "you will see the country flag",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  value: myDefultBool2,
                  onChanged: (val) {
                    setState(() {
                      myDefultBool2 = val!;
                      if (myDefultBool2) {
                        image1 = Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/1200px-Flag_of_Iraq.svg.png"));
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  checkColor: Colors.black,
                  isThreeLine: false,
                  activeColor: Colors.white,
                  title: Text(
                    " uae",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ), subtitle: Text(
                    "you will see the country flag",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  value: myDefultBool3,
                  onChanged: (val) {
                    setState(() {
                      myDefultBool3 = val!;
                      if (myDefultBool3) {
                        image1 = Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/1280px-Flag_of_the_United_Arab_Emirates.svg.png"));
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  checkColor: Colors.black,
                  isThreeLine: false,
                  activeColor: Colors.white,
                  title: Text(
                    " usa",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ), subtitle: Text(
                    "you will see the country flag",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  value: myDefultBool4,
                  onChanged: (val) {
                    setState(() {
                      myDefultBool4 = val!;
                      if (myDefultBool4) {
                        image1 = Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/2560px-Flag_of_the_United_States.svg.png"));
                      }
                    });
                  },
                ),
              ]),
            ),
            Container(
              child: image1,
            )
          ],
        ),
      ),
    );
  }
}
