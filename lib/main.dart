import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: Image.asset('images/Youtube Icon.png'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                /* Code Behaviour Here*/
              },
              child: const Icon(
                Icons.cast,
                size: 26.0,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                /* Code Behaviour Here*/
              },
              child: const Icon(
                Icons.notifications_none_rounded,
                size: 26.0,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                /* Code Behaviour Here*/
              },
              child: const Icon(
                Icons.search,
                size: 26.0,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
                onTap: () {
                  /* Code Behaviour Here*/
                },
                child: CircleAvatar(
                  child: FittedBox(child: Image.asset('images/MiCard-pic.jpg')),
                )),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Card(
                      child: Center(child: Text('Trending')),
                      color: Colors.redAccent,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Card(
                      child: Center(child: Text('Music')),
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Card(
                      child: Center(child: Text('Gaming')),
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Card(
                      child: Center(child: Text('News')),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Card(
                      //color: Colors.blueAccent,
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMbA_71JT0pXiE6puFp5bjgY8hlYxjbnQ_hw&usqp=CAU',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Sports')),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
