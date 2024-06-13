import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 200.0;
  double _height = 200.0;

  void _resizeContainer() {
    setState(() {
      _width = _width == 200.0 ? 300.0 : 200.0;
      _height = _height == 200.0 ? 300.0 : 200.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: _resizeContainer,
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: Image.network(
            'https://images.unsplash.com/photo-1712693028986-6f0150a5e39a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
  }
}
