import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
        // visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {



  @override

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _selected;
  List<Map> _myJson = [

    {
      'id': '1',
      'image': 'assets/images/alum.png',
      'name': 'Alum'
    },
    {
      'id': '2',
      'image': 'assets/images/flammable.png',
      'name': 'Flammable'
    },
    {
      'id': '3',
      'image': 'assets/images/noname.png',
      'name': 'No name'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark App'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),


        // child: Column(
        //   children: const[
        //   TextField(
        //   decoration: InputDecoration(
        //       border: OutlineInputBorder(),
        //   labelText: 'Наименование',
        // ),
        //   ),
        //       TextField(
        //         decoration: InputDecoration(
        //           border: OutlineInputBorder(),
        //           labelText: 'Наименование',
        //         ),
        //       ),
        //   ],
        // ),

          child: Wrap (


              runSpacing: 30,
          children: [

          Container(
          padding: EdgeInsets.all(15),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Expanded(
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton<String>(
                      isDense: true,
                      hint: new Text("Select Mark"),
                      value: _selected,
                      onChanged: (String newValue)  {
                        setState(() {
                          _selected = newValue;
                        });

                        print(_selected);
                      },
                      items: _myJson.map((Map map) {
                        return new DropdownMenuItem<String>(
                          value: map["id"].toString(),

                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                map["image"],
                                width: 25,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(map["name"])),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
         Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),

           child: TextField(

          decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide:
              BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0)
          ),
          labelText: 'Наименование',
        ),
      ),

      ),
          ],
          ),
             ),
    );
  }
}
