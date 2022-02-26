import 'package:flutter/cupertino.dart';
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
      title: 'InstaValentine',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _controller = TextEditingController();
  var _controllers = TextEditingController();
  var _count = 0;
  var s1 = Icons.favorite_border;
  var s2 = Colors.black;
  var s3 = Icons.favorite_border;
  var s4 = Colors.black;
  List<String> _Comments = [];
  List<String> _Comment2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'InstaValentine',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          )),
      body: Container(
        color: Color(0xF8F09BF3),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                  NetworkImage('assets/images/poro.png'),
                                ),
                                Text(
                                  ' Game thuk bok doy',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              ],
                            ),
                            InkWell(
                              child: Icon(
                                Icons.more_vert, //
                                size: 30.0, // ขนาดไอคอน
                                //color: Colors.blue,   // สีไอคอน
                              ),
                              onTap: () {}, // Handle your callback
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 2000,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(
                            'assets/images/ha.png',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(' Hades กำลังลดราคา 35% ในเว็บ Steam เหลือราคา 207.35 บาท'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Ana ',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('อะไรนะ!!ฉันเพิ่งซื้อราคาเต็ม 🥲'),
                              ],
                            ),
                            for (int i = 0; i < _Comments.length; i++)
                              Row(
                                children: [
                                  Text('Flutter',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${_Comments[i]}'),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _count++;
                              print(_count);
                              if (_count % 1 == 0) {
                                s1 = Icons.favorite;
                                s2 = Colors.pinkAccent;
                              }
                              if (_count % 2 == 0) {
                                s1 = Icons.favorite_border;
                                s2 = Colors.black;
                              }
                            });
                          },
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                s1, //
                                size: 20.0, // ขนาดไอคอน
                                color: s2, // สีไอคอน
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: _controller,
                                    onSubmitted: (_input) {
                                      setState(() {
                                        _Comments.add(_input);
                                        _controller.clear();
                                      });
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Add a comment',
                                      hintStyle: TextStyle(
                                          color: Colors.pinkAccent
                                              .withOpacity(0.7)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /////////////////////////////////////////////////////////////////////////
              Card(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                  NetworkImage('assets/images/prayutt icon.jpg'),
                                ),
                                Text(
                                  ' Prayut O Cha',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              ],
                            ),
                            InkWell(
                              child: Icon(
                                Icons.more_vert, //
                                size: 30.0, // ขนาดไอคอน
                                //color: Colors.blue,   // สีไอคอน
                              ),
                              onTap: () {}, // Handle your callback
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 2000,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(
                            'assets/images/prayuttloveyou01.jpg',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                                'รักคนไทยทุกคน และ แผ่นดินไทย '),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Siwat  ',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('ออกไปปปปปปปป'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Prayutt O cha ',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('ไปปรับทัศนคติหน่อยไหมละ <3'),
                              ],
                            ),
                            for (int i = 0; i < _Comment2.length; i++)
                              Row(
                                children: [
                                  Text('Lotte',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${_Comment2[i]}'),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _count++;
                              print(_count);
                              if (_count % 1 == 0) {
                                s3 = Icons.favorite;
                                s4 = Colors.pinkAccent;
                              }
                              if (_count % 2 == 0) {
                                s3 = Icons.favorite_border;
                                s4 = Colors.black;
                              }
                            });
                          },
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                s3, //
                                size: 20.0, // ขนาดไอคอน
                                color: s4, // สีไอคอน
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: _controllers,
                                    onSubmitted: (String sub) {
                                      setState(() {
                                        _Comment2.add(sub);
                                        _controllers.clear();
                                      });
                                    },//by
                                    decoration: InputDecoration(
                                      hintText: 'Add a comment',
                                      hintStyle: TextStyle(
                                          color: Colors.pinkAccent//
                                              .withOpacity(0.7)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
