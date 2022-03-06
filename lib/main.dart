import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool aramaYapiliyorMu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        aramaYapiliyorMu ?
            TextField(

              onChanged: (degerAl)
              {
                print('Deger: $degerAl');
                },

            )

            :

        Text("AppBar Arama"),
        actions: [
          aramaYapiliyorMu ?

          IconButton(onPressed: ()
          {
            setState(() {
              aramaYapiliyorMu=false;
            });

          }, icon: Icon(Icons.cancel))

          :

          IconButton(onPressed: ()
              {
                setState(() {
                  aramaYapiliyorMu=true;
                });

              }, icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),

    );
  }
}
