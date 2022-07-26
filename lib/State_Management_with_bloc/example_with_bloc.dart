import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CounterBloc.dart';

class IncrementalButtonWithBloc extends StatefulWidget {
  const IncrementalButtonWithBloc({Key? key}) : super(key: key);

  @override
  _IncrementalButtonWithBlocState createState() =>
      _IncrementalButtonWithBlocState();
}

class _IncrementalButtonWithBlocState extends State<IncrementalButtonWithBloc> {
  @override
  Widget build(BuildContext context) {
    //TODO initialize bloc object
    final _counterBloc = BlocProvider.of<CounterBloc>(context);
    print("hello this is build method is calling with provider");
    return Scaffold(
        appBar: AppBar(
          title: const Text("BLoc Tutorials "),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (BuildContext context, int state) {
                return Text(
                  "Counte Value : $state",
                  style: TextStyle(fontSize: 30),
                );
              },
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
                    _counterBloc.add(CounterEvents.increment);
                  },
                  color: Colors.white38,
                ),
                const SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: const Text("Decrement"),
                  onPressed: () {
                    _counterBloc.add(CounterEvents.decrement);
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
              onPressed: () {},
              color: Colors.white38,
            )
          ],
        ));
  }
}
