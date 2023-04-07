import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;
  late Animation<Color> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _opacityAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
    _scaleAnimation =
        Tween<double>(begin: 1, end: 2).animate(_animationController);
    _rotationAnimation =
        Tween<double>(begin: 0, end: 360).animate(_animationController);
    // _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(_animationController);

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animations')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _opacityAnimation,
              child: const Text('Fade Animation'),
            ),
            const SizedBox(height: 20),
            ScaleTransition(
              scale: _scaleAnimation,
              child: const Text('Scale Animation'),
            ),
            const SizedBox(height: 20),
            RotationTransition(
              turns: _rotationAnimation,
              child: const Text('Rotation Animation'),
            ),
            const SizedBox(height: 20),
            // DecoratedBoxTransition(
            //   decoration: BoxDecoration(color: _colorAnimation.value),
            //   child: SizedBox(
            //     width: 100,
            //     height: 100,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
