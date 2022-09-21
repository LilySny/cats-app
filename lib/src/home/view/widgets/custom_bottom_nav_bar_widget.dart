import 'package:flutter/material.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 100,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: _bottomNavBackground(colorScheme),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIconButton(context, const Icon(Icons.menu), 'Cats'),
          _buildIconButton(context, const Icon(Icons.face), 'Me'),
        ],
      ),
    );
  }

  Decoration _bottomNavBackground(ColorScheme colorScheme) {
    return BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.tertiary,
            colorScheme.inversePrimary,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ));
  }

  Widget _buildIconButton(
    BuildContext context,
    Icon icon,
    String label,
  ) {
    return Column(
      children: [
        InkResponse(
          onTap: () {},
          child: icon,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
