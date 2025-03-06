import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String bmi;
  const Info({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index Info'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text('Body Nass Index (BMI) is a value derived from '
                'the mass  (weight) and height of a person',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20)),
                Table(
                  border: TableBorder.all(color: Colors.orangeAccent),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                          'BMI Value',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold)
                        )),

                        TableCell(
                          child: Text(
                          'Classification',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)
                        ))
                      ]
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(
                            child: Text(
                              'Below 18.5',
                              textAlign: TextAlign.center,
                            ))),
                        TableCell(
                            child: Center(
                                child: Text(
                                  'Underweight',
                                  textAlign: TextAlign.center,
                                )))
                      ]
                    ),
                    TableRow(children: [
                      TableCell(child: Center(
                        child:Text('18.5 - 24.9',
                        textAlign: TextAlign.center,)
                      )),
                      TableCell(child: Center(
                        child:Text('Normal',
                        textAlign: TextAlign.center,)
                      ))
                    ]),

                    TableRow(children: [
                      TableCell(child: Center(
                          child:Text('More than 24.9',
                            textAlign: TextAlign.center,)
                      )),
                      TableCell(child: Center(
                          child:Text('Overweight',
                            textAlign: TextAlign.center,)
                      ))
                    ])
                  ],
                ),
                SizedBox(height: 8.0,),
                bmi == ' '? Text('Please enter your height and weight to calculate your BMI')
                    : Text('Your BMI is $bmi'),
                Expanded(child: SizedBox()),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Go Back'))
              ],
            ),
          ),),
    );
  }
}
