import 'package:flutter/material.dart';
import 'package:mark_app/label.dart';

void main() {
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marks List',
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

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // String _selected;
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

  TextEditingController nameController = TextEditingController();
  TextEditingController identityController = TextEditingController();
  List<Label> labels = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark App'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
          child: Wrap (
            runSpacing: 30,
          children: [

        //   Container(
        //   padding: EdgeInsets.all(15),
        //   margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        //   decoration: BoxDecoration(
        //       border: Border.all(width: 1, color: Colors.grey),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //
        //       Expanded(
        //         child: DropdownButtonHideUnderline(
        //           child: ButtonTheme(
        //             alignedDropdown: true,
        //             child: DropdownButton<String>(
        //               isDense: true,
        //               hint: new Text("Select Mark"),
        //               value: _selected,
        //               onChanged: (String newValue)  {
        //                 setState(() {
        //                   _selected = newValue;
        //                 });
        //
        //                 print(_selected);
        //               },
        //               items: _myJson.map((Map map) {
        //                 return new DropdownMenuItem<String>(
        //                   value: map["id"].toString(),
        //
        //                   child: Row(
        //                     children: <Widget>[
        //                       Image.asset(
        //                         map["image"],
        //                         width: 25,
        //                       ),
        //                       Container(
        //                           margin: EdgeInsets.only(left: 10),
        //                           child: Text(map["name"])),
        //                     ],
        //                   ),
        //                 );
        //               }).toList(),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //
        //   ),
        // ),
         Container(
           padding: EdgeInsets.all(10),
           margin: const EdgeInsets.only(left: 10.0, right: 10.0),

           child: Column (


           children: [
               TextField(
          controller: nameController,
          decoration:  InputDecoration(
          border: OutlineInputBorder(
              borderSide:
              BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0)
          ),
          labelText: 'Наименование',
        ),
      ),
              SizedBox(
               height: 20,
             ),
              TextField(
                controller: identityController,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderSide:
                      BorderSide(width: 1, color: Colors.grey),
                     borderRadius: BorderRadius.circular(10.0)
                 ),
                 labelText: 'Подлинность',
               ),
             ),
              SizedBox(
               height: 20,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [

                 ElevatedButton(
                     onPressed: (){
                       String name = nameController.text.trim();
                       String identity = identityController.text.trim();
                   if (name.isNotEmpty && identity.isNotEmpty){
                     setState(() {
                       labels.add(Label(name: name, identity: identity));
                     });

                   }
                 }, child: const Text('Save')),
                 ElevatedButton(onPressed: (){}, child: const Text('Update'))
               ],

             ),
             SizedBox(
               height: 10,
             ),
             labels.isEmpty
                 ? const Text(
               'No Label',
                style: TextStyle(fontSize: 22),
             ) :Expanded(
               child:
                        ListView.builder(
               itemCount: labels.length,

               itemBuilder: (context, index) => getRow(index),

    ),
    )

      ],
           ),

      ),
          ],
          ),
             ),
    );
  }

  Widget getRow(int index) {
    return ListTile(
      title: Column(
        children: [
          Text(labels[index].name),
          Text(labels[index].identity),
        ],
      ),
    );
  }
}

