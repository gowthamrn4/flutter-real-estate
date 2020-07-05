import 'package:flutter/material.dart';
import 'package:flutterapp/model.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(
        primaryColor: const Color(0xffB23121),
        accentColor: const Color(0xffD44638)),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.lightGreen[50],
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    cityButton('Nearby',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkdTUCkGUbvY3g7NtlFaqQr1OqALmBEnGQcg&usqp=CAU'),
                    cityButton('Chennai',
                        'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    cityButton('Madurai',
                        'https://images.unsplash.com/photo-1519010470956-6d877008eaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    iconButton()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 100,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {},
                          ),
                          Text('Rooms',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey))
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.red, spreadRadius: 0.2),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.room_service,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {},
                          ),
                          Text('Resort',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey))
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.red, spreadRadius: 0.2),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.room,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {},
                          ),
                          Text('Service',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey))
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.red, spreadRadius: 0.2),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.redAccent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.red, spreadRadius: 1),
                                ],
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkdTUCkGUbvY3g7NtlFaqQr1OqALmBEnGQcg&usqp=CAU'),
                              ),
                            ),
                            Text(
                              'SIGN UP & SCORE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3.0),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Sign up and get flat 4000 in your E stay wallet',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [Colors.redAccent, Colors.purple]),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[500],
                            blurRadius: 20.0,
                            spreadRadius: 1.0,
                          )
                        ]),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Our Collections',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 10),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  width: 200,
                                  height: 70,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    gradient: new LinearGradient(colors: [
                                      Colors.redAccent,
                                      Colors.purple
                                    ]),
                                  ),
                                  child: Text(
                                    'shine apartment in anakaputhur , chennai south',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1519010470956-6d877008eaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  width: 200,
                                  height: 70,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    gradient: new LinearGradient(colors: [
                                      Colors.redAccent,
                                      Colors.purple
                                    ]),
                                  ),
                                  child: Text(
                                    'Bharathi sai shine apartment in anakaputhur , chennai south',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  width: 200,
                                  height: 70,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    gradient: new LinearGradient(colors: [
                                      Colors.redAccent,
                                      Colors.purple
                                    ]),
                                  ),
                                  child: Text(
                                    'Gowtham shine apartment in anakaputhur , chennai south',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Our Clients',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.red, spreadRadius: 1),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: 100,
                                padding: EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(14),
                                width: 180,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                        'Lorem ipsum dolor sit amet anscture asipolaje edft liguah dalto',
                                        style: TextStyle(fontSize: 13)),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Mr.Gowtham',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Estay Townhouse',
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Chennai',
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.red, spreadRadius: 1),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: 100,
                                padding: EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(14),
                                width: 180,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Lorem ipsum dolor sit amet anscture asipolaje edft liguah dalto',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Mr.Gowtham',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Estay Townhouse',
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Chennai',
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.red, spreadRadius: 1),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: 100,
                                padding: EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(14),
                                width: 180,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                        'Lorem ipsum dolor sit amet anscture asipolaje edft liguah dalto',
                                        style: TextStyle(fontSize: 13)),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Mr.Gowtham',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Estay Townhouse',
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Chennai',
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

cityButton(String name, String image) {
  return SizedBox(
    child: Column(children: <Widget>[
      Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.red, spreadRadius: 1),
          ],
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(image),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
        ),
      )
    ]),
  );
}

iconButton() {
  return Column(
    children: <Widget>[
      Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.red, spreadRadius: 1),
          ],
        ),
        child: IconButton(
          icon: Icon(
            Icons.forward,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Text(
          'See All',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
        ),
      )
    ],
  );
}
