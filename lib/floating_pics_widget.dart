import 'package:flutter/material.dart';

class FloatingPics extends StatelessWidget {
  final double posTop;
  final double posLeft;
  final double size;
  final double angle;
  final Color bgColor;
  final String assetImage;

  const FloatingPics({
    Key? key,
    this.posTop = 0,
    this.posLeft = 0,
    this.size = 50,
    this.angle = 0 / 360,
    this.bgColor = Colors.black,
    this.assetImage = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: posTop,
      left: posLeft,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(angle),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(16, 0, 0, 0),
                spreadRadius: 1,
              ),
            ],
            color: bgColor,
            image: DecorationImage(
              image: AssetImage(assetImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
