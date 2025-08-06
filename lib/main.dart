import 'package:counterapp/controller/bloc/counter_bloc.dart';
import 'package:counterapp/controller/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    return BlocProvider(
      //bloc
      create: (BuildContext context) => CounterBloc(),

      //cubit
      // create: (BuildContext context)=> CounterCubit(),
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              //bloc
              BlocBuilder<CounterBloc, CounterState>(
//cubit
                  //  BlocBuilder<CounterCubit,CounterState>(
                  builder: (BuildContext context, state) {
                print("build child");

                return Text(
                  state.count.toString(),
                  style: TextStyle(fontSize: 30),
                );
              }),
              //bloc
              BlocBuilder<CounterBloc, CounterState>(
                  //cubit
                  // BlocBuilder<CounterCubit,int>(
                  builder: (BuildContext context, state) {
                print("build inc");

                return TextButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncreamentEvent());

                  },
                  child: Container(
                    color: Colors.black,
                    height: 50,
                    width: 100,
                    child: Center(
                      child: const Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ),
                  ),
                );
              }),
              BlocBuilder<CounterBloc, CounterState>(
                  builder: (BuildContext context, state) {
                print("build inc");

                return TextButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecreamentEvent());
                  },
                  child: Container(
                    color: Colors.black,
                    height: 50,
                    width: 100,
                    child: Center(
                      child: const Text(
                        '-',
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

