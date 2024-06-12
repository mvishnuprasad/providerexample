import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  final List<int> numbers;
  const Second({super.key, required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Text(
            widget.numbers.last.toString(),
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      widget.numbers[index].toString(),
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
          int num = widget.numbers.last;
          setState(() {
            widget.numbers.add(num + 1);
          });
        },
      ),
    ));
  }
}
