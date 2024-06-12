import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/list_provider.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberslistProvider>(
      builder: (context, numberslistproviderModel, child) => SizedBox(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightBlueAccent,
            ),
            body: Column(
              children: [
                Text(
                  numberslistproviderModel.numbers.last.toString(),
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
                Container(
                  height: 300,
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numberslistproviderModel.numbers.length,
                        itemBuilder: (context, index) {
                          return Text(
                            numberslistproviderModel.numbers[index].toString(),
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
                          );
                        }),
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              child: const Icon(Icons.add),
              onPressed: () {
                int num = numberslistproviderModel.numbers.last;

                numberslistproviderModel.add();
              },
            ),
          )),
    );
  }
}

