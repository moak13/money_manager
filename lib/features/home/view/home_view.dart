import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/home_viewmodel.dart';
import '../widget/board_display.dart';
import '../widget/stick.dart';
import '../widget/transaction_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double scaleHeight = height / 100;
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width / 100;
    double sizeText = MediaQuery.of(context).textScaleFactor;
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Month:',
                      style: TextStyle(
                        fontSize: sizeText * 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: scaleHeight * 20,
                width: scaleWidth * 90,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    BoardDisplay(
                      title: 'Income',
                      amount: 0,
                      sizeText: sizeText,
                    ),
                    Stick(
                      scaleHeight: scaleHeight,
                      scaleWidth: scaleWidth,
                    ),
                    BoardDisplay(
                      title: 'Expense',
                      amount: 0,
                      sizeText: sizeText,
                    ),
                    Stick(
                      scaleHeight: scaleHeight,
                      scaleWidth: scaleWidth,
                    ),
                    BoardDisplay(
                      title: 'Balance',
                      amount: 0,
                      sizeText: sizeText,
                    ),
                  ],
                ),
              ),
              Text(
                'Transactions',
                style: TextStyle(
                    fontSize: sizeText * 20, fontWeight: FontWeight.w600),
              ),
              Container(
                  height: scaleHeight * 47,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(20),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return TransactionCard(
                          scaleHeight: scaleHeight,
                          textSize: sizeText,
                          title: 'Dog Food',
                          amount: 900,
                          isExpense: true,
                        );
                      }))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.plus),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
