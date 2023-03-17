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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                backgroundImage: AssetImage('images/MiCard-pic.jpg'),
                backgroundColor: Colors.blue,
                radius: 16.0,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        //REMOVED LIST VIEW from here
        children: [
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 216,
                child: Card(
                  child: Center(child: Text('Trending')),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 50,
                width: 216,
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
                width: 216,
                child: Card(
                  child: Center(child: Text('Gaming')),
                  color: Colors.brown,
                ),
              ),
              SizedBox(
                height: 50,
                width: 216,
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
                width: 216,
                child: Card(
                  color: Colors.blue,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM75vk_jT0kJo_ULSJhRMb5xAk4v9WQqVM3w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Trending Videos'),
              )
            ],
          ),
          ListView()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.black),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined, color: Colors.black),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined, color: Colors.black),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
