import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/list_provider.dart';
import 'package:providerexample/second.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberslistProvider>(
        builder: (context, numbersprovidermodel, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.lightBlueAccent,
              ),
              body: Column(
                children: [
                  Text(
                    numbersprovidermodel.numbers.last.toString(),
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w800),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: ListView.builder(
                          itemCount: numbersprovidermodel.numbers.length,
                          itemBuilder: (context, index) {
                            return Text(
                              numbersprovidermodel.numbers[index].toString(),
                              style: const TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w900),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Second()));
                        },
                        child: const Text("Open",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800))),
                  )
                ],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.lightBlueAccent,
                child: const Icon(Icons.add),
                onPressed: () {
                  numbersprovidermodel.add();
                },
              ),
            ));
  }
}
