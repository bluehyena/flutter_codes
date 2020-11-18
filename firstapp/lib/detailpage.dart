import 'package:flutter/material.dart';
import 'utililty.dart';

class DetailPage extends StatelessWidget {
  final Item item;

  DetailPage({Key key, @required this.item}) : super(key:key);

  Widget buildImage() {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/logo.png'),
            radius: 70.0,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 20.0),
          Text(item.name,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard() {
    return Row(
      children: [
        rowCell(item.posts, 'POST'),
        rowCell(item.followers, 'FOLLOWERS'),
        rowCell(item.followings, 'FOLLOWINGS'),
      ],
    );
  }

  Widget rowCell(int count, String type) {
    return Expanded(
      child: Column(
        children: [
          Text(type, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0),
          Text(count.toString(), style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }

  Widget buildBio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('BIO',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        item.bio,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 2.0,
          fontSize: 14.0,
          fontStyle: FontStyle.italic
        ),
      )
    ],);
  }
  
  
  Widget buildContactBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          print("Contact!!");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.blue[200],
        child: Text(
          'contact-me',
          style: TextStyle( 
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans'
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Profile"),
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[100], Colors.blue[500]]
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildImage(),
                SizedBox(height: 20),
                Divider(
                  height: 60.0,
                  color: Colors.grey[850],
                  thickness: 0.5,
                ),
                buildCard(),
                Divider(
                  height: 60.0,
                  color: Colors.grey[850],
                  thickness: 0.5,
                ),
                buildBio(),
                SizedBox(height: 100),
                buildContactBtn()
              ],
            ),
          ),
        ],
      ),
    );
  }
}