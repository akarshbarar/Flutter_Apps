import 'package:flutter/material.dart';

void main()=>runApp(new Calc());

class Calc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Calculator();
  }
}

class Calculator extends State<HomePage>{
  var x=0;
  var y=0;
  var result=0;
  TextEditingController a=new TextEditingController(text: "0");
  TextEditingController b=new TextEditingController(text: "0");


  void Add(){
    setState(() {
      x=int.parse(a.text);
      y=int.parse(b.text);
      result=x+y;
    });
  }
  void Sub(){
    setState(() {
      x=int.parse(a.text);
      y=int.parse(b.text);
      result=x-y;
    });
  }
  void Div(){
    setState(() {
      x=int.parse(a.text);
      y=int.parse(b.text);
      result=x~/y;
    });
  }
  void Mul(){
    setState(() {
      x=int.parse(a.text);
      y=int.parse(b.text);
      result=x*y;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator App"),
      ),
      body:new Container(
        padding: EdgeInsets.all(25.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number One",
              ),
              controller: a,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number two",
              ),
              controller: b,
            ),
            new Text(
              "RESULT::$result",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Addition"),
                    color: Colors.lightBlueAccent,
                    onPressed: Add,
                ),
                new MaterialButton(
                  child: new Text("Substraction"),
                  color: Colors.lightBlueAccent,
                  onPressed: Sub,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 10.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                new Padding(padding: EdgeInsets.only(left: 2.0)),
                new MaterialButton(
                  child: new Text("Division"),
                  color: Colors.lightBlueAccent,
                  onPressed: Div,
                ),
                new MaterialButton(
                  child: new Text("Multiplication"),
                  color: Colors.lightBlueAccent,
                  onPressed:Mul,
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}