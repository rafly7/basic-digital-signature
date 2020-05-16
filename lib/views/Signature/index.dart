import 'package:flutter/material.dart';
import 'package:signature_photo/widgets/Signature/signature.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Signatures(),
    );
  }
}