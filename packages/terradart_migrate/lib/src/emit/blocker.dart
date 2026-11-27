final class MigrateBlocker implements Exception {
  MigrateBlocker(this.reason);

  final String reason;

  @override
  String toString() => reason;
}
