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
              child: const CircleAvatar(
                backgroundImage: AssetImage('images/MiCard-pic.jpg'),
                backgroundColor: Colors.grey,
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
          const SizedBox(
            height: 8,
          ),
          Row(
            children: const [
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  color: Colors.redAccent,
                  child: Center(child: Text('Trending')),
                ),
              ),
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  color: Colors.green,
                  child: Center(child: Text('Music')),
                ),
              )
            ],
          ),
          Row(
            children: const [
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  color: Colors.brown,
                  child: Center(child: Text('Gaming')),
                ),
              ),
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  color: Colors.blue,
                  child: Center(child: Text('News')),
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  color: Colors.blue,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM75vk_jT0kJo_ULSJhRMb5xAk4v9WQqVM3w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.sports, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Sport',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 45,
            width: 180,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Trending Videos'),
            ),
          ),
          Column(
            children: [
              //1st COntainer:
              Container(
                child: Column(
                  children: [
                    Image.asset('images/img.png'),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('images/channel.png'),
                        backgroundColor: Colors.grey,
                      ),
                      title: const Text(
                          'Lecture-5 R.E Process Models & Other Models',
                          maxLines: 2,
                          softWrap: true),
                      subtitle: const Text('Booming Software Engineers'),
                      trailing: IconButton(
                        padding: const EdgeInsets.only(left: 25),
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
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
