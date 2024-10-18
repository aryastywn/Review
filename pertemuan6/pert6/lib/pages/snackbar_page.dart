import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final mySnackBar = SnackBar(
              content: Text("Berhasil membuat SnackBar"),
              duration: Duration(seconds: 3),
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
          );
          ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
        }, child: Text(
          "Membuat SnackBar",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      ),
    );
  }
}
