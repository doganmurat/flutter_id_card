import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Page(),
      ),
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "D  E  S  I  G  N  M  A  N  I  A",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              "California, US",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/5360596/pexels-photo-5360596.jpeg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Lydia Black",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              "Designer",
              style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        Icon(Icons.perm_identity,color: Colors.white,),
                        Text(
                          " ID: 1234 2313 4512",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      children: [
                        Icon(Icons.merge_type,color: Colors.white,),
                        Text(
                          " Blood: A+",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      children: [
                        Icon(Icons.mail_outline,color: Colors.white,),
                        Text(
                          " Email: lydiablack@designmania.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone,color: Colors.white,),
                        Text(
                          " Phone: +1234567890",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image(width: 300, height: 120,image: NetworkImage("https://images.vexels.com/media/users/3/157844/isolated/preview/b195d0ac92bf3446db1e1b4ced15ca60-bar-code-scan-icon-by-vexels.png"),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
