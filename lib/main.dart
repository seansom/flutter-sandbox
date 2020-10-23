import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Sandbox(),
      ),
    );
  }
}



class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}


// Sample Animated Column Widget
class _SandboxState extends State<Sandbox> {

  // 4. Set properties that need to be animated
  double _height = 80;
  double _width = 160;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {

    // 1. Wrap the widget to be animated in an AnimatedFOO container
    return AnimatedContainer(

      // 2. Set the duration of all animations
      duration: Duration(milliseconds: 900),

      // 3. Optional: set the transition timings of animations
      curve: Curves.easeIn,

      // Set properties to be animated
      // Note: these properties should have initial values set in the State
      height: _height,
      width: _width,
      color: _color,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Text('Hello World!'),
          RaisedButton(
            child: Text('Wow!'),
            onPressed: () {

              // 5. Change state properties and animations occur automatically!
              setState(() {
                if(_color == Colors.blue) {
                  _height = 160;
                  _width = 320;
                  _color = Colors.green;
                } else {
                  _height = 80;
                  _width = 160;
                  _color = Colors.blue;
                }
              });
            },
          )
        ],
      ),
    );
  }
}
