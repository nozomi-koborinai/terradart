/// Why a block cannot become Dart. Thrown inside the emitter, caught per
/// block, and reported as a [KeptItem] reason.
final class MigrateBlocker implements Exception {
  MigrateBlocker(this.reason);

  final String reason;

  @override
  String toString() => reason;
}
