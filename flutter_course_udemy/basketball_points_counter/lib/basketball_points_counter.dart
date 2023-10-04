// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballPointsCounter extends StatelessWidget {
  const BasketballPointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Points Counter',
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
              title: Center(child: Text('Points Counter')),
              backgroundColor: Colors.orangeAccent),
          body: Stack(children: [
            Image.asset(
              'images/basketball.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(75, 110, 75, 110),
                child: Transform.scale(
                  scale: 1.4,
                  child: Column(children: [
                    Center(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 32.0, 0, 24),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Team A',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        state.countA.toString(),
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 30),
                                  child: Transform.scale(
                                    scale: 1.2,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ElevatedButton(
                                              onPressed: () => context.read<CounterCubit>().incrementa1(),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.orange)),
                                              child: Text('Add 1 Point')),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ElevatedButton(
                                              onPressed: () => context.read<CounterCubit>().incrementa2(),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.orange)),
                                              child: Text('Add 2 Point')),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ElevatedButton(
                                            onPressed: () => context.read<CounterCubit>().incrementa3(),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Colors.orange)),
                                            child: Text('Add 3 Point'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 24,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 32.0, 0, 24),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Team B',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        state.countB.toString(),
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 30),
                                  child: Transform.scale(
                                    scale: 1.2,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ElevatedButton(
                                              onPressed: () => context.read<CounterCubit>().incrementb1(),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.orange)),
                                              child: Text('Add 1 Point')),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ElevatedButton(
                                              onPressed: () => context.read<CounterCubit>().incrementb2(),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.orange)),
                                              child: Text('Add 2 Point')),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ElevatedButton(
                                            onPressed: () => context.read<CounterCubit>().incrementb3(),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Colors.orange)),
                                            child: Text('Add 3 Point'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 50, 35, 50),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Center(
                            child: ElevatedButton(
                                onPressed: () => context.read<CounterCubit>().reset(),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.orange)),
                                child: Text('Reset'))),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ]),
        );
    }, listener: (context, state) {});
  }
}
