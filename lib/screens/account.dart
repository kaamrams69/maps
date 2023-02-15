import 'package:flutter/material.dart';
import 'package:maps/auth/main_auth.dart';

class Account extends StatelessWidget {
  const Account({key});

  @override
  Widget build(BuildContext context) {
    return ProfileScene();
  }
}

class ProfileScene extends StatefulWidget {
  @override
  State<ProfileScene> createState() => _ProfileSceneState();
}

class _ProfileSceneState extends State<ProfileScene> {
  int kills = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.grey.shade900,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/profile.png"),
            ),
          ),
          Divider(
            height: 80,
            color: Colors.grey,
            thickness: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NAME",
                  style: TextStyle(
                    color: Colors.black,
                    //fontFamily: "hehe",
                    letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'User',
                  style: TextStyle(
                    color: Color.fromARGB(255, 60, 14, 139),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    //fontFamily: "hehe",
                    //letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.black,
                    //fontFamily: "hehe",
                    letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '123456789',
                  style: TextStyle(
                     color: Color.fromARGB(255, 60, 14, 139),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    //fontFamily: "hehe",
                    //letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Gender",
                  style: TextStyle(
                    color: Colors.black,
                    //fontFamily: "hehe",
                    letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Male',
                  style: TextStyle(
                     color: Color.fromARGB(255, 60, 14, 139),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    //fontFamily: "hehe",
                    //letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "user@motopair.com",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        //fontFamily: "hehe",
                        //fontWeight: FontWeigh,
                        //letterSpacing: 4.0,
                      ),
                    ),
                    // const Image(
                    //   image: AssetImage(),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => MyAuth()),
  (Route<dynamic> route) => false,
);
        }, child: Text("Log-out"),),],
      ),
    );
  }
}
