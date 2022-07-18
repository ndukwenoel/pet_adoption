import 'package:flutter/material.dart';





class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage(
                    'assets/images/owner.JPG'
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
