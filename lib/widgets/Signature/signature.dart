import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class Signatures extends StatefulWidget {
  @override
  _SignaturesState createState() => _SignaturesState();
}

class _SignaturesState extends State<Signatures> {

  final SignatureController _controller = SignatureController(penStrokeWidth: 5, penColor: Colors.red);

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print("Value changed"));
  }


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double height = size.height*0.8941;

    return Builder(
      builder: (context) => ListView(
        children: <Widget>[
              //SIGNATURE CANVAS
              Signature(controller: _controller, height: height, backgroundColor: Colors.white),
              //OK AND CLEAR BUTTONS
              Container(
                decoration: const BoxDecoration(color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //SHOW EXPORTED IMAGE IN NEW ROUTE
                    IconButton(
                      icon: const Icon(Icons.check),
                      color: Colors.green,
                      onPressed: () async {
                        if (_controller.isNotEmpty) {
                          var data = await _controller.toPngBytes();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  backgroundColor: Colors.grey[300],
                                  appBar: AppBar(),
                                  body: Center(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Image.memory(data)
                                    )
                                  ),
                                );
                              },
                            ),
                          );
                        }
                      },
                    ),
                    //CLEAR CANVAS
                    IconButton(
                      icon: const Icon(Icons.clear),
                      color: Colors.red,
                      onPressed: () {
                        setState(() => _controller.clear());
                      },
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}