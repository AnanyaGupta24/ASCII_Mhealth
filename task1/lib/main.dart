import 'package:flutter/material.dart';
import 'package:task1/NavBar.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Side menu'),
      ),
      backgroundColor: Colors.grey[200],
      body:
      Column(
        children: [
          Image.network('https://www.planetware.com/wpimages/2020/06/canada-best-campgrounds-in-manitoba-brereton-lake-tent-site.jpg'),


          SizedBox(
              height: 20.0
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
      ],
              ),
          ],
          ),

          SizedBox(
            height: 15.0,
          ),

          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level,it is one of the larger Alpine Lakes. A gandola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
            ],
      ),
    );
  }
}