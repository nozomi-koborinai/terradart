abstract class Clock {
  DateTime now();
}

class SystemClock implements Clock {
  const SystemClock();
  @override
  DateTime now() => DateTime.now();
}

class FixedClock implements Clock {
  const FixedClock(this._fixed);
  final DateTime _fixed;
  @override
  DateTime now() => _fixed;
}
