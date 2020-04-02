import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/post.dart';

class FeedPage extends StatefulWidget {

  
  @override
  _FeedPageState createState() => _FeedPageState();
}

Color _iconwhite = Colors.white;

class Story {
  String name;
  String image;

  Story (String name, String image) {
    this.name = name;
    this.image = image;
  }
}



class _FeedPageState extends State<FeedPage> {

   List<Story> stories = List();

   _FeedPageState() {
     stories.add(
       Story('Your Story', 'images/image0.jpg'),
     );
     stories.add(
       Story('John23', 'images/image1.jpg'),
     );
     stories.add(
       Story('Tyler222', 'images/image2.jpg'),
     );
     stories.add(
       Story('Robert_43', 'images/image3.jpg'),
     );
     stories.add(
       Story('JessicaSmith', 'images/image4.jpg'),
     );
     stories.add(
       Story('RogerS', 'images/image5.jpg'),
     );
     stories.add(
       Story('Kelsey383', 'images/image6.jpg'),
     );
   }


  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
          body: Container(
        height: _height,
        width: _width,
        color: Colors.black,
        child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
                Container(
                  height: _height * 0.1,
                  width: _width,
                  decoration: BoxDecoration(
                    color: Colors.grey[850].withOpacity(0.5),
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: Colors.white.withOpacity(0.2)
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,30,10,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(MaterialCommunityIcons.camera_outline, color: Colors.white,),
                        Text('Instagram', style: 
                        GoogleFonts.lobsterTwo(
                          color: Colors.white,
                          fontSize: 22.0
                        )),
                        Icon(Feather.send, color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: _height * 0.12,
                      width: _width,
                      decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: Colors.white.withOpacity(0.2)
                      ),
                    ),
                  ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: stories.length, 
                        itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: 2.0,),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 28,
                                          backgroundColor: Colors.red,
                                            child: CircleAvatar(
                                            radius: 26,
                                            backgroundImage: AssetImage('images/image$index.jpg'), 
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2.0,),
                                    Text(stories[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0
                                    ),),
                                  ],
                                ),
                              );
                        }),
                    ),
                  ],
                ),
                Container(
                height: _height,
                width: _width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: post.length,
                   padding: EdgeInsets.only(bottom: 10),
                  itemBuilder: (context, index) {
                    return Container(
                          height: _height * 0.91,
                          width: _width,
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Stack(
                              children: <Widget>[
                                    Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                SizedBox(width: 10.0,),
                                                CircleAvatar(
                                                        radius: 14,
                                                        backgroundColor: Colors.red,
                                                          child: CircleAvatar(
                                                          radius: 12,
                                                          backgroundImage: AssetImage('images2/image2$index.jpg'), 
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(post[index].name,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500
                                                      ),),
                                              ],
                                            ),
                                            SizedBox(height: 12.0,),
                                            Container(
                                              height: _height * 0.55,
                                              child: Image(image: AssetImage('images/post$index.jpg'), fit: BoxFit.cover),
                                            ),
                                            Row(
                                          children: <Widget>[
                                            SizedBox(width: 0.0,),
                                                IconButton(
                                                  icon: Icon(Icons.favorite_border),
                                                  color: _iconwhite,
                                                  onPressed: () {
                                                    setState(() {
                                                      _iconwhite = Colors.red;
                                                    });
                                                  },
                                              ),
                                            SizedBox(width: 0.0,),
                                            Icon(MaterialCommunityIcons.chat_outline, color: Colors.white, size: 25.0),
                                            SizedBox(width: 10.0,),
                                            Icon(Feather.send, color: Colors.white, size: 25.0),
                                          ],
                                            ),
                                        SizedBox(height: 3.0,),
                                         Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      SizedBox(width: 10.0,),
                                                      Text(post[index].likes,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            fontWeight: FontWeight.w500
                                                          ),),
                                                          SizedBox(width: 5.0,),
                                                      Text('likes',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            fontWeight: FontWeight.w500
                                                          ),), 
                                                    ],
                                                  ),
                                                  SizedBox(height: 12.0),
                                                      Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            SizedBox(width: 10.0,),
                                                              Text(post[index].name,
                                                                  style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 16.0,
                                                                    fontWeight: FontWeight.bold
                                                                  ),),
                                                                SizedBox(width: 10.0,),
                                                                Text(post[index].desc,
                                                                style: TextStyle(
                                                                  fontSize: 16.0,
                                                                  color: Colors.white,
                                                                ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 8.0,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10.0),
                                                        child: Text('View all 234 comments',
                                                            style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 18.0,
                                                            ),),
                                                      ), 
                                                      SizedBox(height: 8.0,),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          Row(
                                                            children: <Widget>[
                                                              Text(post[index].user,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),),
                                                          SizedBox(width: 5.0),
                                                              Text(post[index].comment,
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 16.0
                                                              )),
                                                            ],
                                                          ),
                                                          SizedBox(height: 8.0,),
                                                          Text(post[index].time,
                                                              style: TextStyle(
                                                                color: Colors.grey,
                                                                fontSize: 16.0
                                                              )),
                                                        ],
                                                      ),
                                                    ),   
                                                ],
                                              ),
                                          ],
                                        ),
                                    Positioned(
                                      right: 20.0,
                                      bottom: 180.0,
                                      child: Icon(Feather.bookmark,
                                      size: 26.0,
                                      color: Colors.white,)),
                                    Positioned(
                                      right: 20.0,
                                      child: Icon(Entypo.dots_three_horizontal,
                                      size: 20.0,
                                      color: Colors.white,)),
                              ],
                            ),
                          ),
                        );
                  }
                  ),
              ),
            ],
          ),
        ),
      ),
      
          backgroundColor: Colors.black,
        );
  }
}

                                  