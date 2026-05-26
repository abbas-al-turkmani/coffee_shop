import 'package:coffee_shop/src/core/services/service_locator.dart';
import 'package:coffee_shop/src/core/widgets/loading_widget.dart';
import 'package:coffee_shop/src/core/widgets/my_radio_buttons.dart';
import 'package:coffee_shop/src/features/home/bloc/home.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/home.state.dart';
import '../widgets/home_background.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_location_widget.dart';
import '../widgets/my_navigation_bar.dart';
import '../widgets/my_search_widget.dart';
import '../widgets/product_card.dart';
import 'favorits_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    List<String> catigories = ["All Coffee", "Machiato", "Latte", "Amreicano"];

    SizedBox sizeBetween = SizedBox(height: 24.h);

    List<Widget> pages = [
      Stack(
        children: [
          HomeBackground(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeLocationWidget(),
                MySearchWidget(),
                sizeBetween,
                HomeBanner(),
                sizeBetween,
                // Filter (Coffee types)
                MyRadioButtonSet(
                  values: catigories,
                  selectedIndex: 0,
                  buttonHeight: 29.h,
                  onSelectionChanged: (index) {},
                  buttonChildBuilder: (context, isSelected, index) => Text(
                    catigories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: isSelected ? null : Color(0xFF313131),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return LoadingWidget(
                        isLoading: state.products.isLoading,
                        errorMessage: state.products.error,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1 / 1.7,
                                mainAxisSpacing: 8.h,
                                crossAxisSpacing: 15.w,
                              ),
                          itemCount: state.products.list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ProductCard(
                              module: state.products.list[index],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      FavoritsPage(),
      FavoritsPage(),
      FavoritsPage(),
    ];

    return BlocProvider(
      create: (context) =>
          HomeBloc(productsDatasource: getItInstance())..initData(),
      child: Scaffold(
        bottomNavigationBar: MyNavigationBar(
          onChanged: (p0) => setState(() => currentPage = p0),
        ),
        body: IndexedStack(children: pages),
      ),
    );
  }
}
