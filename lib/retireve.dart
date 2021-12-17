import 'package:flutter/material.dart';

class RetrieveText extends StatefulWidget {
  const RetrieveText({Key? key}) : super(key: key);

  @override
  _RetrieveTextState createState() => _RetrieveTextState();
}

class _RetrieveTextState extends State<RetrieveText> {
  final mycontroller = TextEditingController();
  var name = '';
  var _validate = true;

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              name = mycontroller.text;
              name.isEmpty 
              ? _validate = false 
              : _validate = true;
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(),
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              controller: mycontroller,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(name)
          ],
        ),
      )),
    );
  }
}
