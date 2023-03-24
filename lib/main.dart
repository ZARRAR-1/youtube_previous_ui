import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
      // backgroundColor:,
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 3,
        leading: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'images/Youtube Icon.jpg',
              width: 90,
            ),
          ],
        ),
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
                // backgroundImage: AssetImage('images/MiCard-pic.jpg', ),
                backgroundColor: Colors.grey,
                radius: 16.0,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                          image: AssetImage(
                        'images/MiCard-pic.jpg',
                      ),),),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          //Row:1
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFgBJbGqs7B3WRKBNZW7JrYedXy0iek3G_5w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.trending_up, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Trending',
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
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  elevation: 0,
                  // color: Colors.blue,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuJf8Rxl04E4mTYxR42piOBkf6MipU97-RdA&usqp=CAU'),
                        // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM75vk_jT0kJo_ULSJhRMb5xAk4v9WQqVM3w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.music_note_outlined, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Music',
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
          //Row:2
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  elevation: 0,
                  // color: Colors.blue,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/img_1.png'),
                        // NetworkImage(
                        //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM75vk_jT0kJo_ULSJhRMb5xAk4v9WQqVM3w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.control_camera_outlined,
                              color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Gaming',
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
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  elevation: 0,
                  // color: Colors.blue,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSbFgD8my1AXDRIaK9EplJmSZOsQv8qaOniQ&usqp=CAU'),
                        // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM75vk_jT0kJo_ULSJhRMb5xAk4v9WQqVM3w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.newspaper_rounded, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'News',
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
          //Row:3
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 180,
                child: Card(
                  elevation: 0,
                  // color: Colors.blue,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM75vk_jT0kJo_ULSJhRMb5xAk4v9WQqVM3w&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
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

          //Video thumbnails begun from here:
          const SizedBox(height: 10),
          Container(
            // decoration: BoxDecoration()
            color: Colors.white,
            height: 45,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Trending videos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                //1st COntainer:
                Container(
                  child: Column(
                    children: [
                      Image.asset('images/thumbnail.jpg'),
                      ListTile(
                        dense: false,
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('images/channel.png'),
                          backgroundColor: Colors.grey,
                        ),
                        title: const Text(
                          'Lecture-5 R.E Process Models & Other Models',
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          'Booming Software Engineers . 14M views . 12 days ago',
                          softWrap: false,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 25),
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert, size: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),

                //2nd Container:
                Container(
                  child: Column(
                    children: [
                      Image.asset('images/thumbnail.jpg'),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('images/channel.png'),
                          backgroundColor: Colors.grey,
                        ),
                        title: const Text(
                          'Lecture-4 R.E Process Models & Other Models',
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          'Booming Software Engineers . 14M views . 12 days ago',
                          softWrap: false,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 25),
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.black, size: 20),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, color: Colors.black, size: 35),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined,
                color: Colors.black, size: 20),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined,
                color: Colors.black, size: 20),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
