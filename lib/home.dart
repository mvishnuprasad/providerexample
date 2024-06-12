import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<int> numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Text(
            numbers.last.toString(),
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListView.builder(
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbers[index].toString(),
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
          int num = numbers.last;
          setState(() {
            numbers.add(num+1);
          });
        },
      ),
    );
  }
}
