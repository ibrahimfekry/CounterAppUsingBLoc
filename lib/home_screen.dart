import 'package:flutter/material.dart';

import '../bloc/bloc_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Center(
                  child: Text(
                    'CounterValue : ${state.counterValue}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () =>context
                          .read<CounterBloc>()
                          .add(CounterDecrementEvent()),
                      icon: Icon(Icons.remove),
                      label: Text('Decrease'),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed:() => context
                          .read<CounterBloc>()
                          .add(CounterIncrementEvent()),
                      icon: Icon(Icons.add),
                      label: Text('Increase'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
