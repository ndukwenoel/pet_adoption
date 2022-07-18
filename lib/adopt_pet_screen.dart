import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/constant.dart';
import 'package:pet_adoption/models/pet_model.dart';





class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildPetCategory(bool isSelected, String category) {
    return GestureDetector(
      onTap: () {
        debugPrint("Selected $category");
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 80.0,
        decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Color(0xfff8f2f7),
          borderRadius: BorderRadius.circular(30.0),
          border: isSelected
              ? Border.all(
                  width: 8.0,
                  color: Color(0xfffed803),
                )
              : null,
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 40, top: 40),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage('assets/images/owner.JPG'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 22.0,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.black,
                    size: 40.0,
                  ),
                ),
                labelText: 'Location',
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.only(bottom: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 100.0,
            color: Colors.grey,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 40.0),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    onPressed: () {
                      print('Filters');
                    },
                    icon: Icon(
                      Icons.search,
                      size: 35.0,
                    ),
                  ),
                ),
                buildPetCategory(false, "Cats"),
                buildPetCategory(true, "Dogs"),
                buildPetCategory(false, "Birds"),
                buildPetCategory(false, "Rabbits"),
                buildPetCategory(false, "Others"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0, bottom: 30.0),
            child: Column(
              children: [
                // Hero(
                //   tag: pets[0].id,
                //   child: Container(
                //     width: double.infinity,
                //     height: 250.0,
                //     decoration: BoxDecoration(
                //         color: Colors.red,
                //         borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(20.0),
                //           bottomLeft: Radius.circular(20.0),
                //         ),
                //         image: DecorationImage(
                //           image: AssetImage('assets/images/img_2.png'),
                //         )),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

double lastStop = 02.14;
