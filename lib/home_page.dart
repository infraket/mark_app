import 'package:flutter/material.dart';
import 'package:mark_app/label.dart';



class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController identityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  List<Label> labels = List.empty(growable: true);

  int selectedIndex = -1;
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



  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Mark App'),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.only(top: 50),
  //   // child: Wrap (
  //       child: Column (
  //         // runSpacing: 30,
  //
  //         children: [
  //           SizedBox(
  //             height: 10,
  //           ),

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
//             Container(
//               padding: EdgeInsets.all(10),
//               margin: const EdgeInsets.only(left: 10.0, right: 10.0),
//
//               child: Column (
//
//
//                 children: [
//                   TextField(
//                     controller: nameController,
//                     decoration:  InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderSide:
//                         // BorderSide(width: 1, color: Colors.grey),
//                         borderRadius: BorderRadius.all(Radius.circular(10.0)
//                         ),
//                       ),
//                       hintText: 'Наименование',
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextField(
//                     controller: identityController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                           // borderSide:
//                           // BorderSide(width: 1, color: Colors.grey),
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)
//                           )),
//                       // labelText: 'Подлинность',
//                       hintText: 'Подлинность',
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//
//                       ElevatedButton(
//                           onPressed: (){
//                             String name = nameController.text.trim();
//                             String identity = identityController.text.trim();
//                             if (name.isNotEmpty && identity.isNotEmpty){
//                               setState(() {
//                                 nameController.text = '';
//                                 identityController.text = '';
//                                 labels.add(Label(name: name, identity: identity));
//                               });
//
//                             }
//                           }, child: const Text('Save')),
//                       ElevatedButton(onPressed: (){}, child: const Text('Update'))
//                     ],
//
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   labels.isEmpty
//                       ? const Text(
//                     'No Label',
//                     style: TextStyle(fontSize: 22),
//                   )
//                       :Expanded(
//                     child:
//                     ListView.builder(
//                       itemCount: labels.length,
//
//                       itemBuilder: (context, index) => getRow(index),
//
//                     ),
//                   )
//
//                 ],
//               ),
//
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget getRow(int index) {
//     return Card(
//       child:
//       ListTile(
//         title: Column(
//           children: [
//             Text(labels[index].name),
//             Text(labels[index].identity),
//           ],
//         ),
//       ),
//     );
//   }
// }

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text('Mark App'),
    ),
    body:
    // SafeArea(
    //   child: Container(
    //     child:

    Padding(
      padding: const EdgeInsets.all(8.0),
  //     child: SingleChildScrollView(
  //       child: Container(
  // child: Form(
       child: Column(
        children: <Widget>[
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
          //               onChanged: (newValue)  {
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

          const SizedBox(height: 10),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
                hintText: 'Наименование',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ))),
          ),
          const SizedBox(height: 10),
          // Container(
          //   margin: EdgeInsets.only(top:25),
          //   padding: EdgeInsets.all(15),
          //   // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
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
          //               onChanged: (String newvalue)  {
          //                 setState(() {
          //                   _selected = newvalue;
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
          //TextField(
            TextFormField(
            controller: identityController,
            // keyboardType: TextInputType.number,
            // maxLength: 10,
            decoration: const InputDecoration(
                hintText: 'Подлинность',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ))),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: categoryController,
            // keyboardType: TextInputType.number,
            // maxLength: 10,
            decoration: const InputDecoration(
                hintText: 'Категория, сорт',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ))),
          ),
          const SizedBox(height: 20),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //
                    String name = nameController.text.trim();
                    String identity = identityController.text.trim();
                    String category = categoryController.text.trim();
                    if (name.isNotEmpty && identity.isNotEmpty && category.isNotEmpty) {
                      setState(() {
                        nameController.text = '';
                        identityController.text = '';
                        categoryController.text = '';
                        labels.add(Label(name: name, identity: identity, category: category));
                      });
                    }
                    //
                  },
                  child: const Text('Save')),
              ElevatedButton(
                  onPressed: () {
                    //
                    String name = nameController.text.trim();
                    String identity = identityController.text.trim();
                    String category = categoryController.text.trim();
                    if (name.isNotEmpty && identity.isNotEmpty && category.isNotEmpty) {
                      setState(() {
                        nameController.text = '';
                        identityController.text = '';
                        categoryController.text = '';
                        labels[selectedIndex].name = name;
                        labels[selectedIndex].identity = identity;
                        selectedIndex = -1;
                      });
                    }
                    //
                  },
                  child: const Text('Update')),
            ],
          ),
          const SizedBox(height: 10),
          labels.isEmpty
              ? const Text(
            'No Label',
            style: TextStyle(fontSize: 22),
          )
              : Expanded(
            child: ListView.builder(
              itemCount: labels.length,
              itemBuilder: (context, index) => getRow(index),
            ),
          ),


        ],
      ),
      ),
    );


}

Widget getRow(int index) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor:
        index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
        foregroundColor: Colors.white,
        child: Text(
          labels[index].name[0],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labels[index].name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(labels[index].identity),
          Text(labels[index].category),
        ],
      ),
      trailing: SizedBox(
        width: 70,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  //
                  nameController.text = labels[index].name;
                  identityController.text = labels[index].identity;
                  categoryController.text = labels[index].category;
                  setState(() {
                    selectedIndex = index;
                  });
                  //
                },
                child: const Icon(Icons.edit)),
            InkWell(
                onTap: (() {
                  //
                  setState(() {
                    labels.removeAt(index);
                  });
                  //
                }),
                child: const Icon(Icons.delete)),
          ],
        ),
      ),
    ),
  );
}
}