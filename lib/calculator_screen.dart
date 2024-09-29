import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String input = "12345";
  String output = "output";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        input,
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Visibility(
                        visible: output.isNotEmpty,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "=",
                              style: TextStyle(
                                  //height: 0,
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            //Spacer(),
                            Text(
                              output,
                              style: TextStyle(
                                  //height: 0,
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(24),
              //width: MediaQuery.of(context).size.width - 48,
              color: Colors.white,
              child: Wrap(
                spacing: 20, // in horizantal space we used
                runSpacing: 20,
                runAlignment: WrapAlignment
                    .center, //in vertically space we used in wrap widget
                children: [
                  individualButton(
                    text: "AC",
                    color: Colors.red,
                    textcolor: Colors.white,
                  ),
                  individualButton(
                    text: "()",
                  ),
                  individualButton(
                    text: "%",
                  ),
                  individualButton(
                    text: "/",
                  ),
                  individualButton(
                    text: "7",
                  ),
                  individualButton(
                    text: "8",
                  ),
                  individualButton(
                    text: "9",
                  ),
                  individualButton(
                    text: "*",
                  ),
                  individualButton(
                    text: "4",
                  ),
                  individualButton(
                    text: "5",
                  ),
                  individualButton(
                    text: "6",
                  ),
                  individualButton(
                    text: "-",
                  ),
                  individualButton(
                    text: "1",
                  ),
                  individualButton(
                    text: "2",
                  ),
                  individualButton(
                    text: "3",
                  ),
                  individualButton(
                    text: "+",
                  ),
                  individualButton(
                    text: "0",
                    colspan: 2,
                  ),
                  individualButton(
                    text: ".",
                  ),
                  individualButton(
                    text: "=",
                    color: Theme.of(context).primaryColor,
                    textcolor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class individualButton extends StatelessWidget {
  const individualButton(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.colspan = 4,
      this.textcolor = Colors.black});

  final String text;
  final double colspan;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Botton tap");
      },
      child: Container(
        //padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / colspan -
            (colspan == 2 ? 34 : 27),
        height: 85,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: textcolor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
