import 'package:cats_app/src/home/view/widgets/cat_list_widget.dart';
import 'package:cats_app/src/home/view/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildBody(context),
      bottomNavigationBar: const CustomBottomNavBarWidget(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 54.0, bottom: 20.0),
              child: Text(
                "Featured",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            const CatListWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
              child: Text(
                "All cats",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
