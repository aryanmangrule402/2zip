import 'package:poe_practice/animation_across_screens.dart';
import 'package:poe_practice/animator_container_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment No. 13'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AnimationAcrossScreenPageOne(),
                    ));
              },
              child: const Text("animation across screens"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimatedContainerExample(),
                    ));
              },
              child: const Text("Animated Container Widget"),
            ),
          ],
        ),
      ),
    );
  }
}
