import 'package:flutter/material.dart';

// class StackExample extends StatelessWidget {
//   const StackExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Positioned(
//               left: 30,
//               child: Container(
//                 height: 300,
//                 width: 300,
//                 color: Colors.green,
//                 child: Text('Green'),
//               ),
//             ),
//             Positioned(
//               left: 60,
//               top: 60,
//               child: Container(
//                 height: 300,
//                 width: 300,
//                 color: Colors.red,
//                 child: Text('Red'),
//               ),
//             ),
//             Positioned(
//               top: 90,
//               left: 90,
//               child: Container(
//                 height: 300,
//                 width: 300,
//                 color: Colors.yellow,
//                 child: Text('Yellow'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// // }
// class TextFdl extends StatelessWidget {
//   const TextFdl({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// return Scaffold(
//   body: SafeArea(
//     child: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: TextField(
//           keyboardType: TextInputType.emailAddress,
//           // maxLength: 10,
//           // maxLines: 2,
//           // obscureText: true,
//           // obscuringCharacter: '*',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//           decoration: InputDecoration(
//               icon: Icon(Icons.people),
//               labelText: "Name",
//               hintText: "Enter your Name",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30))),
//         )),
//   ),
//     );
//   }
// }

class StTextField extends StatefulWidget {
  const StTextField({Key? key}) : super(key: key);

  @override
  _StTextFieldState createState() => _StTextFieldState();
}

class _StTextFieldState extends State<StTextField> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              onChanged: (String value) {
                setState(() {
                  name = value;
                });

                print("entered name is $name");
              },
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "your best friend name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('your best Friend name is $name',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
