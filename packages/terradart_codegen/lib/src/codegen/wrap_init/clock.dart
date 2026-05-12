/// Time source for `wrap-init`. Injected via constructor so L2 goldens can
/// pin the banner timestamp without depending on wall-clock drift.
abstract class Clock {
  DateTime now();
}

/// Production: returns wall-clock time via `DateTime.now()`.
class SystemClock implements Clock {
  const SystemClock();
  @override
  DateTime now() => DateTime.now();
}

/// Tests: returns a fixed instant. Use with L2 golden tests.
class FixedClock implements Clock {
  const FixedClock(this._fixed);
  final DateTime _fixed;
  @override
  DateTime now() => _fixed;
}
