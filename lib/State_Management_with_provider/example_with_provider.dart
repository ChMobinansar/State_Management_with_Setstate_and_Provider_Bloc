import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/increment_provider.dart';

class IncrementalButtonWithProvider extends StatefulWidget {
  const IncrementalButtonWithProvider({Key? key}) : super(key: key);

  @override
  _IncrementalButtonWithProviderState createState() =>
      _IncrementalButtonWithProviderState();
}

class _IncrementalButtonWithProviderState
    extends State<IncrementalButtonWithProvider> {
  @override
  Widget build(BuildContext context) {
    print("hello this is build method is calling with provider");
    final counter = Provider.of<AddIncrement>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Tutorials "),
      ),
      body: Center(
        child: Consumer<AddIncrement>(
          builder: (context, person, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Count Value: ${context.watch<AddIncrement>().count} ",
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
                        //TODO this is using provider
                        // counter.incrementCounter();
                        //TODO this is using Consumer
                        person.incrementCounter();
                        print("${counter.count}");
                      },
                      color: Colors.white38,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      child: const Text("Decrement"),
                      onPressed: () {
                        //TODO this is using provider
                        // counter.decrementCounter();
                        //TODO this is using Consumer
                        person.decrementCounter();
                        print("${counter.count}");
                      },
                      color: Colors.white38,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: const Text("reset"),
                  onPressed: () {
                    counter.reSet();
                    print("${counter.count}");
                  },
                  color: Colors.white38,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
