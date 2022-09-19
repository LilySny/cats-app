import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 74.0, bottom: 20.0),
              child: Text(
                "Featured",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            const CatCardWidget(
              imageUrl:
                  "https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1175550351.jpg",
              description: 'very nice cat',
              title: 'Awesome cat',
            )
          ],
        ),
      ),
    );
  }
}

class CatCardWidget extends StatelessWidget {
  const CatCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Theme.of(context).colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              imageUrl,
              height: 94,
              width: 94,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
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
            ],
          ),
        ],
      ),
    );
  }
}
