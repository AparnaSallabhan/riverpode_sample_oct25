class CounterScreenState {
  int counter;
  bool isLoading;
  // String? name;
  // String? course;
  CounterScreenState({
    required this.counter,
    required this.isLoading,
    // this.course,
    // this.name
  });

  CounterScreenState copyWith({int? counter, bool? isLoading}) {
    return CounterScreenState(
        counter: counter ?? this.counter,
        isLoading: isLoading ?? this.isLoading);
  }
}
