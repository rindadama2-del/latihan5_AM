import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title Aplikasi', //muncul di tab
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)
      ),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.man_2_rounded),
        title: Text("Latihan Scaffold 1"),
        actions: [
          Icon(Icons.abc_outlined),
        Icon(Icons.access_time_rounded),
        IconButton(onPressed: (){
          print("Klik notifications");
          
        }, icon: Icon(Icons.notification_add))
        ],
        ),
      body: Center(child: Text("Hello world")),
    );
  }
}

// class MyPage2 extends StatelessWidget {
//   const MyPage2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return (
//       appBar: AppBar(title: Text("Latihan Scaffold 2")),
//       body: Center(child: Text("Hello world")),
//     );
//   }
// }