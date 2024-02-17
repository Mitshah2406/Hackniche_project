import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanner extends StatelessWidget {
  final id;

  const Scanner({Key? key, required this.id}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 27, 44),
      appBar: AppBar(
        title: Text("Qr Code Scanner"),
        // actions: eventDoc['role'] == "captain"
        //     ? <Widget>[
        //         IconButton(
        //           icon: Icon(
        //             Icons.person_add,
        //             color: Color.fromARGB(255, 32, 46, 168),
        //           ),
        //           onPressed: () {
        //             Navigator.pushNamed(context, '/addMembers');
        //           },
        //         )
        //       ]
        //     : <Widget>[Text("")],
      ),
      body: MyScanner(id: id),
    );
  }
}

class MyScanner extends StatefulWidget {
  final id;
  const MyScanner({Key? key, required this.id}) : super(key: key);

  @override
  State<MyScanner> createState() => _MyScannerState();
}

class _MyScannerState extends State<MyScanner> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  int flag = 0;
  int counter = 0;
  var _isLoading = false;

  void _onSubmit() async {
    setState(() => _isLoading = true);
    await Future.delayed(
      const Duration(seconds: 4),
      () => setState(() => _isLoading = false),
    );
  }

  _showcontent(counter, titleInf, desc) {
    counter = 0;
    showDialog(
      context: this.context, barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text(titleInf),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: [Text(desc)],
            ),
          ),
          actions: [
            if (titleInf == "Participant Not Registerd")
              ElevatedButton.icon(
                onPressed: _onSubmit,
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0)),
                icon: _isLoading
                    ? Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(2.0),
                        child: const CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      )
                    : const Icon(Icons.login_outlined),
                label: const Text('Register'),
              )
            else if (titleInf == "Participant Already Present")
              new MaterialButton(
                child: new Text('Done'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {});
                },
              )
            else
              new MaterialButton(
                child: new Text('Done'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {});
                },
              ),
          ],
        );
      },
    );
    return counter;
  }

  // markPresent(scannedId, eventId) async {
  //   var response = await ApiCall.markPresent(scannedId, widget.id);
  //   return response;
  // }

  void qr(QRViewController controller) async {
    this.controller = controller;
    controller.scannedDataStream.listen((event) async {
      counter++;
      // await controller.pauseCamera();
      if ((counter == 1)) {
        print("Control hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
        // var response = await ApiCall.markPresent(event.code, widget.id);
        var response = "success";
        if (response == "success") {
          setState(() {
            flag = 1;
            result = event;
          });
          _showcontent(
              counter, "Successfully Marked Present", "Marked Present");

          return;
        } else if (response == "notRegistered") {
          _showcontent(
              counter, "Participant Not Registerd", "Do you want to Register?");
        } else if (response == "alreadyPresent") {
          _showcontent(
              counter, "Participant Already Present", "You are ready to go.");
        }
      }
    });
  }

  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 300,
              width: 300,
              child: QRView(key: _gLobalkey, onQRViewCreated: qr)),
          Center(
            child: (result != null)
                ? Text(
                    '${result!.code}\n${widget.id}',
                    style: TextStyle(color: Colors.white),
                  )
                : Text("Scan A Student Id"),
          ),
          Center(
            child: ElevatedButton(
              child: Text("Scan A New Code"),
              onPressed: () => {
                setState(() {
                  counter = 0;
                })
              },
            ),
          )
        ],
      ),
    );
  }
}
