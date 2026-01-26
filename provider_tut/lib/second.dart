import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProvider, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberListProvider.add();
          },
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.add, size: 28),
        ),
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: const Text(
            "State Management",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numberListProvider.numbers.last.toString(),
                style: const TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  itemCount: numberListProvider.numbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        numberListProvider.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
