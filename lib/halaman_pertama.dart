import 'package:flutter/material.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation & Routing"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // ini kalau gak pake ROUTING

                  Navigator.pushNamed(context, '/halaman-kedua');
                },
                child: Text(
                  'Go To Second Screen',
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-kedua-dengan-data',
                      arguments: 'opo cok');
                },
                child: Text(
                  'Navigation With Data',
                )),
            ElevatedButton(
                onPressed: () async {
                  var scaffoldMessenger = ScaffoldMessenger.of(context);
                  var hasil =
                      await Navigator.pushNamed(context, '/mengembalikan-data');
                  var snackbar = SnackBar(
                    content: Text('$hasil'),
                  );

                  scaffoldMessenger.showSnackBar(snackbar);

                  print(hasil);
                },
                child: Text(
                  'Return Data from another Screen',
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-pengganti');
                },
                child: Text(
                  'Replace Screen',
                )),
          ],
        ),
      ),
    );
  }
}
