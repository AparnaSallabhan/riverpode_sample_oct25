import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpode_sample_oct25/presentation/counter_screen/state/counter_screen_state.dart';

final counterScreenStateNotifierProvider = StateNotifierProvider((ref) =>CounterScreenStateNotifier() ,);

class CounterScreenStateNotifier extends StateNotifier<CounterScreenState> {
  CounterScreenStateNotifier (): super(CounterScreenState(counter: 0,isLoading: false));
  onIncrement(){
    state = state.copyWith(counter: ++state.counter);
  }
}