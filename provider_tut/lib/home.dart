import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/list_provider.dart';
import 'package:provider_tut/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: ((context, numberProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberProviderModel.add();
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
                numberProviderModel.numbers.last.toString(),
                style: const TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numberProviderModel.numbers.length,
                  padding: EdgeInsets.only(left: 30.0),
                  itemBuilder: (context, index) {
                    return Text(
                      numberProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Second()));
                  },
                  child: Text(
                    'Second',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
