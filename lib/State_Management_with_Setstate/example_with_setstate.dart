import 'package:flutter/material.dart';

class IncrementalButtonSetState extends StatefulWidget {
  const IncrementalButtonSetState({Key? key}) : super(key: key);

  @override
  _IncrementalButtonSetStateState createState() =>
      _IncrementalButtonSetStateState();
}

class _IncrementalButtonSetStateState extends State<IncrementalButtonSetState> {
  int count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Tutorials "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count Value:   $count",
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: const Text("increment"),
                  onPressed: () {
                    increment();
                  },
                  color: Colors.white38,
                ),
                const SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: const Text("Decrement"),
                  onPressed: () {
                    decrement();
                  },
                  color: Colors.white38,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
