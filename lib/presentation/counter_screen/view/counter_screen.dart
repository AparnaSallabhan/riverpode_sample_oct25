// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpode_sample_oct25/presentation/counter_screen/controller/counter_screen_controller.dart';
import 'package:riverpode_sample_oct25/presentation/counter_screen/state/counter_screen_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterScreenStateObj = ref.watch(counterScreenStateNotifierProvider) as CounterScreenState;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterScreenStateNotifierProvider.notifier).onIncrement();
        },
      ),
      body: Center(
        child: Text(
          counterScreenStateObj.counter.toString(),
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
