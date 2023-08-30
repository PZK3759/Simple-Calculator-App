import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String input_Text = "";
  String output_Text = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            color: Color(0xFF374352),
            child: Column(
              children: [
                Container(
                  height: 50,
                  color: Color(0xFF374352),
                ),
                Container(
                  height: 220,
                  color: Color(0xFF374352),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              child: Text(input_Text, maxLines: 1, style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 55,
                                color: Colors.white54,
                              ),),
                            ),

                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("=", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 55,
                              color: Colors.white54,
                            ),),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                reverse: true,
                                child:
                                Text(output_Text, style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 55,
                                  color: Colors.white54,
                                ),),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 500,
                    color: Color(0xFF374352),
                    child: GridView.count(
                      crossAxisCount: 4,
                      children: [
                        GestureDetector(
                          onTap: (){
                            input_Text = "";
                            output_Text = "";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFFd11b1b),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "C",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){

                            if(input_Text.length == 0){
                              input_Text = "";
                            }else{
                              input_Text = input_Text.substring(0, input_Text.length-1);
                            }
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFFd11b1b),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "⌫",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"%";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFF14db42)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"÷";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "÷",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFF14db42)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"7";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"8";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.black26,
                                width: 0.5,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"9";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            borderOnForeground: true,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black26,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"×";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "×",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFF14db42)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"4";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"5";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"6";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"-";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFF14db42)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"1";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"2";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"3";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"+";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xFF14db42)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"0";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+".";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                ".",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            input_Text = input_Text+"00";
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF374352),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            output_Text = calculation();
                            setState(() {

                            });
                          },
                          child: Card(
                            color: Color(0xFF14db42),
                            elevation: 20,
                            shadowColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "=",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  String calculation(){

    double result = 0;
    String expression = "";
    expression =input_Text.replaceAll("×", "*");
    expression = expression.replaceAll('÷', '/');

    String returnMsg = "";

    if(expression.contains("%") && expression.contains("*") && expression[expression.length-1] == "%"){

        expression = expression.substring(0, expression.length-1);
        List<String> values = expression.split("*");

        double percentile = (double.parse(values[1])/100)*double.parse(values[0]);

        returnMsg = percentile.toStringAsFixed(2);

    } else{

      try{
        Parser p = Parser();
        Expression exp = p.parse(expression);

        ContextModel cm = ContextModel();
        result = exp.evaluate(EvaluationType.REAL, cm);
        returnMsg = result.toStringAsFixed(2);
      }catch(e){
        returnMsg = "Syntax Error";
      }

      }



    return returnMsg;
  }

}

