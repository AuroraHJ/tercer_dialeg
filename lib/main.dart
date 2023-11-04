import 'package:flutter/material.dart';

void main() => runApp(const showsnackbar());

class showsnackbar extends StatelessWidget {
  const showsnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recuperar el valor d''un camp de text',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm>{
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar el valor d\'un camp de text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(        
        backgroundColor: Colors.pinkAccent,
        hoverColor: Colors.pink,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Això és un SnackBar'),
              duration: Duration(seconds: 2),
              backgroundColor: Colors.cyan,
            )
          );
        },
        child: const Text('Veure'),
      ),
    );
  }
}