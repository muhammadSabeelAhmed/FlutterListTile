import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Project"),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getChatUI(
                "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg",
                Colors.green,
                "SA",
                "Sabeel Ahmed",
                "Where are you..?",
                "10;20",
              ),
              getChatUI(
                "https://www.rimage.com/emea/wp-content/themes/rimage/assets/images/disc.png",
                Colors.yellow,
                "AB",
                "Abdullah Bin Shahid",
                "Taking class right now",
                "11:00",
              ),
              getChatUI(
                "https://i0.wp.com/cocolapinedesign.com/wp-content/uploads/rimage-11-1.jpeg?fit=2000%2C1498&ssl=1",
                Colors.red,
                "AY",
                "Ayesha",
                "Where are you..?",
                "01:20",
              )

              // Image.asset("assets/car1.webp"),
              // Image.asset("assets/car2.webp"),
              // Image.network(
              //     "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg"),
              // getBox(
              //     "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg"),
              // getBox(
              //     "https://images.unsplash.com/photo-1616455579100-2ceaa4eb2d37?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym13JTIwY2FyfGVufDB8fDB8fHww&w=1000&q=80"),
              // getBox(
              //     "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}

getBox(String url) {
  return Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("$url"),
        ),
        border: Border.all(color: Colors.black, width: 5),
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(500))),
  );
}

getChatUI(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing) {
  return ListTile(
    tileColor: Color.fromARGB(255, 232, 232, 232),
    leading: CircleAvatar(
      backgroundImage: NetworkImage(url),
      backgroundColor: cColor,
      child:
          // Container(
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: NetworkImage(url),
          //       ),
          //       border: Border.all(color: Colors.black, width: 1),
          //       color: Colors.yellow,
          //       borderRadius: BorderRadius.all(Radius.circular(500))),
          // ),

          Text(
        "$avatar",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
    title: Text("$title"),
    subtitle: Text("$subTitle"),
    trailing: Icon(
      Icons.call,
      color: Colors.red,
    ),
  );
}
