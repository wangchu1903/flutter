// import 'package:flutter/material.dart';

// class ClassWork extends StatefulWidget {
//   const ClassWork({Key? key}) : super(key: key);

//   @override
//   _ClassWorkState createState() => _ClassWorkState();
// }

// class _ClassWorkState extends State<ClassWork> {
//   final mycontroller = TextEditingController();
//   bool _validate = true;
//   @override
//   void dispose() {
//     mycontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: mycontroller,
//               decoration: InputDecoration(
//                 labelText: "Name",
//                 hintText: "Country name",
//                 errorText: _validate ? 'fill the form' : null,
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   mycontroller.text.isEmpty
//                       ? _validate = true
//                       : _validate = false;
//                 });
//               },
//               child: const Icon(Icons.arrow_forward),
//             ),
//             Spacer(),
//             Text(
//               '${mycontroller.text}',
//               style: TextStyle(fontSize: 40),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }

import 'package:flutter/material.dart';

class ClassWork extends StatefulWidget {
  const ClassWork({Key? key}) : super(key: key);

  @override
  _ClassWorkState createState() => _ClassWorkState();
}

class _ClassWorkState extends State<ClassWork> {
  final mycontroller = TextEditingController();
  final secController = TextEditingController();
  var name = '';

  var _validFirst = true;
  var _validSecond = true;
  var sum = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: mycontroller,
                  decoration: InputDecoration(
                    labelText: "First number",
                    hintText: "Enter Number",
                    errorText: !_validFirst ? 'fill the form ' : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: secController,
                  decoration: InputDecoration(
                    labelText: "Second Number",
                    hintText: "Enter Number",
                    errorText: !_validSecond ? 'fill the form ' : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        mycontroller.text.isEmpty
                            ? _validFirst = false
                            : _validFirst = true;

                        secController.text.isEmpty
                            ? _validSecond = false
                            : _validSecond = true;
                        if (_validFirst && _validSecond) {
                          sum = double.parse(mycontroller.text) +
                              double.parse(secController.text);
                        }
                      });
                    }),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Result:  $sum",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
    //   appBar: AppBar(),
    //   body: SafeArea(
    //     child: Center(
    //       child: Column(
    //         children: [
    //           TextButton(
    //               style: TextButton.styleFrom(
    //                   padding: const EdgeInsets.all(20),
    //                   minimumSize: const Size(100, 50),
    //                   backgroundColor: Colors.red,
    //                   primary: Colors.white,
    //                   elevation: 20,
    //                   side: const BorderSide(color: Colors.blue, width: 3),
    //                   shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(32)),
    //                   shadowColor: Colors.yellow),
    //               onPressed: () {},
    //               child: const Text('Text')),
    //           const SizedBox(
    //             height: 30,
    //           ),
    //           ElevatedButton(
    //             style: TextButton.styleFrom(
    //                 padding: const EdgeInsets.all(20),
    //                 minimumSize: const Size(100, 50),
    //                 backgroundColor: Colors.blue,
    //                 primary: Colors.white,
    //                 elevation: 20,
    //                 shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(32)),
    //                 shadowColor: Colors.yellow),
    //             onPressed: () {},
    //             child: const Text('Elevated'),
    //           ),
    //           const SizedBox(
    //             height: 30,
    //           ),
    //           ElevatedButton(onPressed: () {}, child: const Text('Outlined'))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Login'),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(30),
//           child: Column(
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Enter your Username",
//                   labelText: "username",
//                 ),
//               ),
//               TextField(
//                 controller: mycontroller,
//                 decoration: InputDecoration(
//                   labelText: "password",
//                   hintText: "enter your pw",
//                 ),
//               ),
//               FloatingActionButton(
//                 onPressed: () {
//                   setState(() {
//                     name = mycontroller.text;
//                   });
//                 },
//                 child: Icon(Icons.add),
//               ),
//               Text("$name", style: TextStyle(fontSize: 40)),
//             ],
//           ),
//         ),
//       ),
//     );
  }
}
