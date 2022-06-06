import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
double weight=70;
void increase(){
  weight++;
  bmi=weight/(height*height*0.0001);

}
void decrease(){
  weight--;
  bmi=weight/(height*height*0.0001);

}




double height=149;
double bmi=weight/(height*height);

void calculate(){

  bmi=weight/(height*height*0.0001);
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hi Welcome to My App"),

            Container(
              height: 150,
              width: 200,
              color: Colors.red,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("Height(cm)\n${height}"),
                  ),
                  Slider(
                    value: height,
                    max: 200,
                    min: 100,
                    onChanged: (newValue){
                      setState((){
                        height=(newValue);
                        calculate();
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 200,
              color: Colors.green,
              child: Column(
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: (){
                        setState((){
                          increase();
                        });
                      }

                  ),
                  Text("Weight(kg)\n${weight}"),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: (){
                      setState((){
                        decrease();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 150,
                width: 150,
                color: Colors.purple,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("BMI Value\n${bmi}"),



                  ],
                )

            )
          ],
        ),
      ),
    );
  }
}




