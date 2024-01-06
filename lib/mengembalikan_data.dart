import 'package:flutter/material.dart';

class MengembalikanData extends StatefulWidget {
  MengembalikanData({super.key});

  @override
  State<MengembalikanData> createState() => _MengembalikanDataState();
}

class _MengembalikanDataState extends State<MengembalikanData> {
  final nameTextFieldController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameTextFieldController,
              decoration: InputDecoration(
                label: Text('masukan nama'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, nameTextFieldController.text);
              },
              child: Text('kirim data'),
            ),
          ],
        ),
      ),
    );
  }
}
