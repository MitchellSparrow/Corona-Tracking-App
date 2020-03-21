import 'package:flutter/material.dart';

class DisclaimerBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: Text(
              "DISCLAIMER:",
              style: TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
          ),
        ),
        Expanded(
          flex: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Center(
              child: Text(
                "The following app connects to the public REST API:https://corona.lmao.ninja/ Which collects data from: https://www.worldometers.info/coronavirus/\n\nThis app is therefore a graphical represention of the data and does not create the data itself. The statistics provided by the API seem accurate, however may be incorrect at a specific point in time.\n\nThe goal of the app is to provide AWEARNESS and INFORMATION of the spreading Corona virus, NOT to spread Fake News.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey[800]),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        ButtonTheme(
          minWidth: 180.0,
          height: 50.0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0),
              side: BorderSide(color: Color.fromRGBO(19, 41, 75, 1))),
          child: RaisedButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            child: Text(
              "CLOSE",
              style: TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
            color: Color.fromRGBO(0, 102, 102, 1),
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}