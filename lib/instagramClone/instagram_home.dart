import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_samples/instagramClone/providers/post_provider.dart';
import 'package:flutter_samples/instagramClone/providers/stories_provider.dart';

import 'models/post_model.dart';
import 'models/stories_model.dart';

class InstagramHome extends StatefulWidget {
  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  StoriesProvider storiesProvider = new StoriesProvider();
  PostProvider postsProvider = new PostProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _labels(),
            _stories(),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 0.5,
            ),
            _post(),
          ],
        ),
      ),
      bottomNavigationBar: _navigationBar(),
    );
  }

  Widget _appBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Container(
          color: Colors.black38,
          height: .75,
        ),
      ),
      elevation: 0,
      backgroundColor: Color(0xfff9f9f9),
      centerTitle: true,
      title: Container(
        margin: EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 40,
          child: Image.asset('assets/images/instagram/logo-instagram.png'),
        ),
      ),
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Feather.camera),
        onPressed: () {},
        iconSize: 28,
      ),
      actions: [
        IconButton(
          color: Colors.black,
          icon: Icon(Feather.tv),
          onPressed: () {},
          iconSize: 28,
        ),
        IconButton(
          color: Colors.black,
          icon: Icon(FontAwesome.send_o),
          onPressed: () {},
          iconSize: 28,
        ),
      ],
    );
  }

  Widget _labels() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Stories',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.arrow_right),
              Text(
                'Watch All',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _stories() {
    return Container(
      height: 105,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10, left: 5),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: storiesProvider.getStories().map((storie) {
          return _createHistory(storie);
        }).toList(),
      ),
    );
  }

  Widget _createHistory(Storie storie) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 3,
              color: Color(0xff8e44ad),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: NetworkImage(
                  storie.photo,
                ),
                height: 65,
                width: 65,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          storie.name,
          style: TextStyle(
            fontSize: 13,
          ),
        )
      ],
    );
  }

  Widget _post() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: postsProvider.getPosts().length,
        itemBuilder: (context, index) {
          return _createPost(postsProvider.getPosts()[index]);
        },
      ),
    );
  }

  Widget _createPost(Post post) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 5,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: NetworkImage(
                          post.userPhoto,
                        ),
                        height: 45,
                        width: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  post.userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                  iconSize: 30,
                ),
              ],
            ),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/instagram/loading.gif'),
            image: NetworkImage(
              post.postPhoto,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 5,
              left: 7,
              bottom: 1,
              right: 7,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Image(
                    image: AssetImage('assets/images/instagram/comment.png'),
                    width: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image(
                    image: AssetImage('assets/images/instagram/send.png'),
                    width: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image(
                    image: AssetImage('assets/images/instagram/heart.png'),
                    width: 30,
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Image(
                    image: AssetImage('assets/images/instagram/save_o.png'),
                    width: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 17,
              right: 17,
              bottom: 10,
            ),
            child: Row(
              children: [
                Text(
                    'Liked By ${post.topLikes[0]} , ${post.topLikes[1]} and ${post.likes} others')
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 17,
              right: 17,
              bottom: 10,
            ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${post.userName} ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: post.caption,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    post.date,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _navigationBar() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black38,
            width: 0.75,
          ),
        ),
      ),
      child: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        selectedItemColor: Colors.black,
        elevation: 0,
        onTap: (int index) {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(AntDesign.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
            title: Text('Load'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: Text('Likes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
