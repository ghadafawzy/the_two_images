import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First Project"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset("assets/natural.jpg"),
                    const SizedBox(width: 25,),
                    Image.network("https://picsum.photos/200"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            const Text("The two images are displayed",style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,fontFamily: 'Suwannaphum-Regular'),),

          ],
        ),
      )
    );
  }
}
