import 'package:flutter/material.dart';

import 'package:live_barcode_scanner/live_barcode_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _preview = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Live Barcode Scanner"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("scan"),
          onPressed: () {
            setState(() {
              _preview = !_preview;
            });
          },
        ),
        body: _preview ? LiveBarcodeScanner(
          onBarcode: (code) {
            print(code);

            return true;
          },
         ) : null,
      ),
    );
  }
}
