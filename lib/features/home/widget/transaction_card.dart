import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  final double scaleHeight;
  final double textSize;
  final String title;
  final double amount;
  final bool isExpense;
  const TransactionCard(
      {Key key,
      this.scaleHeight,
      this.textSize,
      this.title,
      this.amount,
      this.isExpense})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: scaleHeight * 10,
        width: double.infinity,
        margin: const EdgeInsets.all(3),
        child: Column(
          children: <Widget>[
            Container(
              height: scaleHeight * 1,
              width: double.infinity,
              color: isExpense ? Colors.red[300] : Colors.green[300],
            ),
            Container(
              height: scaleHeight * 9,
              width: double.infinity,
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: isExpense
                      ? Icon(
                          FontAwesomeIcons.arrowUp,
                          color: Colors.red[200],
                        )
                      : Icon(
                          FontAwesomeIcons.arrowDown,
                          color: Colors.green[200],
                        ),
                ),
                title: Text(
                  title,
                  style: TextStyle(
                    fontSize: textSize * 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  amount.toString(),
                  style: TextStyle(
                    fontSize: textSize * 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
