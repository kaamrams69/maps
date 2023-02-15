import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  ListTile lt(String title,String image) {

    // void updateList(String value) {
    //   setState(() {
    //     display_list = main
    //   });
    // }

    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(image),
      ),
      title: Text("$title"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            elevation: 0,
            child: TextField(
              cursorColor: Colors.black87,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.black87,
                    width: 2,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.black87,
                ),
                hintText: "Search Garage...",
                //fillColor: Colors.amber,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black87,
                  ),
                ),
              ),
              onChanged: (value) {
                print("hhe");
              },
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      SizedBox(
        height: 20,
      ),
      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/ravi.png"),
                      SizedBox(height: 10,),
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
                    "Ravi car care",
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
                    "Address",
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
                    "Waghodia Chowkdi, Kendranagar, Vadodara, Gujarat 390019",
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
                    "9909366100",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("Ravi car care","assets/garage/ravi.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/rajkumar.png"),
                      SizedBox(height: 10,),
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
                    "Rajkumar Motors",
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
                    "Address",
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
                    "C-138, Ranchhod Park, Dabhoi - Waghodia Ring Rd, opp. Essar Petrol Pump, nr. Pariwar Char Rasta, Pangat Park, Waghodia, Vadodara, Gujarat 390019",
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
                    "9909366100",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("Rajkumar Motors","assets/garage/rajkumar.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/vish.png"),
                      SizedBox(height: 10,),
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
                    "Vishwakarma Auto Engineering Service",
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
                    "Address",
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
                    "2, Divya Ashish Complex, Waghodia Rd, Sarthi Nagar 2, Kendranagar, Vadodara, Gujarat 390025",
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
                    " 09426590922",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("Vishwakarma Auto Engineering Service","assets/garage/vish.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/maa.png"),
                      SizedBox(height: 10,),
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
                    "Maa Chamunda Auto Garage",
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
                    "Address",
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
                    "Dabhoi - Waghodia Ring Rd, Near Parivar Char Rasta, Waghodia, Vadodara, Gujarat 390025",
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
                    "09727369542",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("Maa Chamunda Auto Garage","assets/garage/maa.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/jai.png"),
                      SizedBox(height: 10,),
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
                    "Jay Mataji Auto Garage & Service Station",
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
                    "Address",
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
                    "Shop No.3, Sunrise Point Apartment, Mahesh Complex Rd,Waghodia Road, Near Parivar Char Rasta, Pangat Park, Waghodia, Vadodara, Gujarat 390025",
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
                    " 08141813573",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("ay Mataji Auto Garage & Service Station","assets/garage/jai.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/jiyan.png"),
                      SizedBox(height: 10,),
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
                    "JIYANSHI VAISHANVI AUTO GARAGE",
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
                    "Address",
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
                    "VRUNDAVAN CHR RASTA, Waghodia, Vadodara, Gujarat 390019",
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
                    "09173528590",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("JIYANSHI VAISHANVI AUTO GARAGE","assets/garage/jiyan.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/sai.png"),
                      SizedBox(height: 10,),
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
                    "Sai Auto Garage",
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
                    "Address",
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
                    "Shop No 3 Vraja Compelx, Waghodia Rd, Vadodara, Gujarat 390025",
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
                    "06355499553",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("Sai Auto Garage","assets/garage/sai.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/mk.png"),
                      SizedBox(height: 10,),
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
                    "M K Moter Garage",
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
                    "Address",
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
                    "Pushti Prabha Soc, Waghodia Rd, Bapod Jakat Naka, Madhavpura, Vadodara, Gujarat 390019",
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
                    " 09824537087",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("M K Moter Garage","assets/garage/mk.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            //elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: ListView(
                    padding: EdgeInsets.all(25),
                    children: [
                      Image.asset("assets/garage/prakash.png"),
                      SizedBox(height: 10,),
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
                    "Prakash Motor Garage akbar pathan",
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
                    "Address",
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
                    "near solace hospital, parivar char rasta,, Ring Rd, Waghodia, Vadodara, Gujarat 390019",
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
                    " 09879539794",
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 14, 139),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "hehe",
                      //letterSpacing: 4.0,
                    ),
                  ),
                      ]
                      ,),
                );
              });
        },
        child: lt("Prakash Motor Garage akbar pathan","assets/garage/prakash.png"),
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}



/*
ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
    return lt("Ravi car care");
  },
  separatorBuilder: (context, index) { // <-- SEE HERE
    return Divider();
  },
      
    )
*/

/*
children: [
        SizedBox(height: 10,),
        lt("Ravi car care"),
        SizedBox(height: 10,),
        lt("Rajkumar Motors"),
        SizedBox(height: 10,),
        lt("Vishwakarma Auto Engineering Service"),
        SizedBox(height: 10,),
        lt("Maa Chamunda Auto Garage")

      ],
      */