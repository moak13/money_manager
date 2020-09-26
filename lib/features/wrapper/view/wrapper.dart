import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/wrapper_viewmodel.dart';
import '../widget/get_index_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WrapperViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Money Manager'),
            centerTitle: true,
            elevation: 0,
          ),
          body: GetIndexView(index: model.currentIndex),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: model.currentIndex,
              onTap: model.setIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.chartPie),
                  title: Text('Chart'),
                ),
              ]),
        );
      },
      viewModelBuilder: () => WrapperViewModel(),
    );
  }
}
