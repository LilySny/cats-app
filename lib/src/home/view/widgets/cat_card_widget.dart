import 'package:cats_app/src/home/view/widgets/custom_gradient_button_widget.dart';
import 'package:flutter/material.dart';

class CatCardWidget extends StatelessWidget {
  const CatCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.isAdded,
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final String description;
  final bool isAdded;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Theme.of(context).colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          _buildCatImage(),
          const SizedBox(
            width: 10.0,
          ),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        CustomGradientButtonWidget(
          isAdded: isAdded,
        )
      ],
    );
  }

  Widget _buildCatImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(
        imageUrl,
        height: 94,
        width: 94,
        fit: BoxFit.fill,
      ),
    );
  }
}
