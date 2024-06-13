// import 'package:second_page.dart';
import 'package:flutter/material.dart';
import 'package:poe_practice/second_page.dart';

class AnimationAcrossScreenPageOne extends StatelessWidget {
  const AnimationAcrossScreenPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade200,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SecondScreen(),
              ),
            );
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://images.unsplash.com/photo-1591420699297-88e82958f324?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
