import '../ir/resource_def.dart';

/// Plan 5.X (v0.5.0-dev) — data source Layer 1 emission is retired.
///
/// Pre-Plan-5.X, this emitter generated the `data_<terraformType>.schema.dart`
/// schema-carrier file (empty marker abstract + sensitive const + tiny stub
/// class) alongside the resource-side [AbstractClassEmitter]. With the
/// schemantic chain dropped, the schema-carrier file has no consumer; data
/// source wrappers under `lib/src/data/` are already self-contained (sensitive
/// const is emitted inline by `DataSourceWrapperEmitter`). [emit] now returns
/// the empty string; the call site in `wrap_command.dart` no longer invokes
/// it.
///
/// Kept as a transitional stub so downstream importers do not break in a
/// single release cycle. Safe to delete entirely after that.
class DataSourceClassEmitter {
  const DataSourceClassEmitter();

  /// Plan 5.X stub. Always returns the empty string.
  ///
  /// Parameters preserved for API compatibility; intentionally unused.
  String emit(ResourceDef def, {required String providerSource}) {
    return '';
  }
}
