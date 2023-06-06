import 'package:flutter/material.dart';
import 'package:snack_bar_message/main.dart';

main() {
  runApp(SnackBarMessage());
}

class SnackBarMessage extends StatelessWidget {
  const SnackBarMessage({super.key});

  MySnackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SnackBarMessage'),
          shadowColor: Colors.redAccent,
          backgroundColor: Colors.blue,
          actions: [
            Builder(
              builder: (context) => IconButton(
                // if we use '=>' then dont write return if we use '{}' then we have to write return
                // for example see 2nd builder
                onPressed: () {
                  MySnackBar(context, 'Search');
                },
                icon: Icon(Icons.search),
              ),
            ),
            Builder(builder: (context) {
              //here we use '{}'  that's why we have to write 'return' key wrod understand? 
              return IconButton(
                  onPressed: () {
                    MySnackBar(context, 'Settings');
                  },
                  icon: Icon(Icons.settings));
            })
          ],
        ),
      ),
    );
  }
}
