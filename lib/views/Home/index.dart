import 'package:flutter/material.dart';
import 'package:signature_photo/views/Photo/index.dart';
import 'package:signature_photo/views/Signature/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.green, Colors.blue[200]]
          )
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.transparent,
                  //width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              //borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return SignatureScreen();
                                }));
                              },
                              child: Icon(
                                Icons.photo,
                                size: 150.0,
                              ),
                            ),
                          ),
                          Text(
                            'Signature',
                            style: TextStyle(
                              fontSize: 23
                            ),
                          )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  //width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              //borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return PhotoScreen();
                                }));
                              },
                              child: Icon(
                                Icons.center_focus_strong,
                                size: 150.0,
                              ),
                            ),
                          ),
                          Text(
                            'Photo',
                            style: TextStyle(
                              fontSize: 23
                            ),
                          )
                    ],
                  ),
                ),
              ),
            ],
          ),

          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Container(
          //       child: Expanded(
          //         child: Material(
          //           color: Colors.white,
          //           child: InkWell(
          //             onTap: () {

          //             },
          //             child: Icon(
          //               Icons.image
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Material(
          //         color: Colors.white,
          //         child: InkWell(
          //           onTap: () {
                      
          //           },
          //           child: Icon(
          //             Icons.center_focus_weak
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
      ),
    );
  }
}
