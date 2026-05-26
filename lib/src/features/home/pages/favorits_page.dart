import 'package:coffee_shop/src/core/widgets/loading_widget.dart';
import 'package:coffee_shop/src/features/home/widgets/product_card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home.bloc.dart';
import '../bloc/home.state.dart';

class FavoritsPage extends StatelessWidget {
  const FavoritsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return LoadingWidget(
            isLoading: state.products.isLoading,
            errorMessage: state.products.error,
            child: ListView.builder(
              itemCount: state.products.list.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(module: state.products.list[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
