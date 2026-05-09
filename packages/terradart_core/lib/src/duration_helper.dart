/// Converts a Dart [Duration] into a Terraform duration string ("604800s").
///
/// Terraform Pub/Sub / Cloud Tasks etc. expect integer-second durations
/// (e.g. `604800s`). Sub-second precision is rejected because no Terraform
/// resource in the v0.0.x surface accepts fractional seconds.
extension TerraformDurationExt on Duration {
  /// Returns `"${inSeconds}s"` for non-negative whole-second durations.
  ///
  /// Throws [ArgumentError] for negative or sub-second durations.
  String toTfDurationString() {
    if (isNegative) {
      throw ArgumentError.value(
        this,
        'this',
        'Terraform durations must be non-negative.',
      );
    }
    if (inMicroseconds % Duration.microsecondsPerSecond != 0) {
      throw ArgumentError.value(
        this,
        'this',
        'Terraform durations must be a whole number of seconds; '
            'got $inMicroseconds microseconds.',
      );
    }
    return '${inSeconds}s';
  }
}
