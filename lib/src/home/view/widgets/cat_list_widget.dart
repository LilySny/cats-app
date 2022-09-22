import 'package:cats_app/src/core/service_locator.dart';
import 'package:cats_app/src/home/home.dart';
import 'package:cats_app/src/home/view/widgets/cat_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatListWidget extends StatelessWidget {
  const CatListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatCubit, CatState>(
      bloc: getIt<CatCubit>(),
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ErrorState) {
          return _buildErrorMessage(context);
        } else if (state is LoadedState) {
          return _buildCatList(state);
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildCatList(LoadedState state) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: state.cats.length,
      itemBuilder: (context, index) {
        var cat = state.cats[index];
        return CatCardWidget(
          imageUrl: cat.imageUrl,
          description: cat.description,
          title: cat.name,
          isAdded: true,
        );
      },
    );
  }

  Widget _buildErrorMessage(BuildContext context) {
    return Center(
      child: Text(
        "Sorry, we have some problems loading featured cats 😿",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
