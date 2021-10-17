import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeght = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildContent() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          'My name is John Doe',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Text(
          'I am a promising programmer',
          style: TextStyle(fontSize: 18, height: 1.4),
        ),
      ]),
    );
  }

  Widget buildTop() {
    final top = coverHeght - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://www.iwmbuzz.com/wp-content/uploads/2020/10/how-twice-became-so-successful-details-revealed-920x518.jpg',
          width: double.infinity,
          height: coverHeght,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(
            'https://growthseed.jp/wp-content/uploads/2016/12/peach-1.jpg'),
      );
}
