import 'package:flutter/material.dart';
import 'package:particles/github.dart';

import 'particles_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: ParticleCanvas(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          )),
    );
  }
}
