import 'package:flutter/material.dart';

class CustomGradientButtonWidget extends StatefulWidget {
  const CustomGradientButtonWidget({
    Key? key,
    required this.isAdded,
  }) : super(key: key);
  final bool isAdded;

  @override
  State<CustomGradientButtonWidget> createState() =>
      _CustomGradientButtonWidgetState();
}

class _CustomGradientButtonWidgetState
    extends State<CustomGradientButtonWidget> {
  @override
  Widget build(BuildContext context) {
    var buttonTextTheme = Theme.of(context).textTheme.button;

    return Container(
      width: MediaQuery.of(context).size.width * 0.54,
      margin: const EdgeInsets.only(top: 8),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: _gradientButtonBackground(),
      child: Text(
        widget.isAdded ? 'Add' : 'Remove',
        style: widget.isAdded
            ? buttonTextTheme
            : buttonTextTheme!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
      ),
    );
  }

  Decoration _gradientButtonBackground() {
    var colorScheme = Theme.of(context).colorScheme;

    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          getGradientColor(
            colorScheme.onPrimary,
            colorScheme.surface.withOpacity(0),
          ),
          getGradientColor(
            colorScheme.primary,
            colorScheme.surface,
          ),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }

  Color getGradientColor(Color color1, Color color2) {
    if (widget.isAdded) {
      return color1;
    } else {
      return color2;
    }
  }
}
