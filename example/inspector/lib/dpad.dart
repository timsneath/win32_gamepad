import 'dart:math';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

class DpadIcon extends StatelessWidget {
  final Direction direction;
  const DpadIcon({Key? key, required this.direction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For consistency, rotate a single arrow rather than use different arrows
    // (FluentIcons seems to be missing some directions).
    const icon = Icon(FluentIcons.up);

    switch (direction) {
      case Direction.west:
        return Transform.rotate(child: icon, angle: pi * 6 / 4);
      case Direction.northwest:
        return Transform.rotate(child: icon, angle: pi * 7 / 4);
      case Direction.north:
        return Transform.rotate(child: icon, angle: 0);
      case Direction.northeast:
        return Transform.rotate(child: icon, angle: pi * 1 / 4);
      case Direction.east:
        return Transform.rotate(child: icon, angle: pi * 2 / 4);
      case Direction.southeast:
        return Transform.rotate(child: icon, angle: pi * 3 / 4);
      case Direction.south:
        return Transform.rotate(child: icon, angle: pi);
      case Direction.southwest:
        return Transform.rotate(child: icon, angle: pi * 5 / 4);
      default:
        return const Icon(FluentIcons.location_outline);
    }
  }
}
