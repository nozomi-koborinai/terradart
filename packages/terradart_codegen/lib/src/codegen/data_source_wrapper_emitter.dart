import '../ir/resource_def.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// Emits a Factory Wrapper class for **data source** entries
/// (`final class GoogleProject extends Data<$GoogleProject>`).
///
/// Sibling of [WrapperEmitter] (`Resource<S>` entries). The public API
/// mirrors [WrapperEmitter] for symmetry: take a [ResourceDef] (the IR
/// reuses [ResourceDef] for both resource and data source schemas — see
/// `ProviderSchemaIR.dataSources` typed as `Map<String, ResourceDef>`)
/// and produce a single Dart source string. Output is **unformatted**
/// Dart source; consumers feed it through `dart_style.DartFormatter`.
///
/// Usage:
///
/// ```dart
/// final emitter = DataSourceWrapperEmitter(
///   overrides: loadedOverrides.dataSources,
/// );
/// final dartSource = emitter.emit(
///   dataSourceDef,
///   providerSource: 'hashicorp/google',
/// );
/// ```
///
/// Differences from [WrapperEmitter] (implementation lands in Task 9):
///
/// 1. Generates `final class X extends Data<$X>` (not `Resource<$X>`).
/// 2. When [WrapperOverride.schemaStubBodyMode] is [SchemaStubBodyMode.bare],
///    emits a 3-line schema-stub class (no `noSuchMethod`) — reproduces
///    the hand-written `_GoogleProjectSchemaInstance` exactly.
/// 3. When [WrapperOverride.fileLeadingComment] is set, emits the comment
///    block after the import block and before the schema-stub class
///    (used for the 14-line operational note on `google_project`).
/// 4. The sensitive const set is emitted **inline**
///    (`const Set<String> googleProjectSensitive = <String>{};`) rather
///    than imported from `<resource>.schema.dart`, because data source
///    schemas are typically empty.
class DataSourceWrapperEmitter {
  DataSourceWrapperEmitter({required this.overrides});

  /// `Map<terraformType, override>` for data source entries.
  /// Keys must match [ResourceDef.terraformType].
  final Map<String, WrapperOverride> overrides;

  /// Emits the full Dart source string for a single data source wrapper file.
  ///
  /// - [def]: IR for the data source (terraformType + attributes).
  /// - [providerSource]: e.g. `'hashicorp/google'`, used in the file banner.
  ///
  /// The override entry MUST exist for [def.terraformType] in [overrides].
  /// Throws [StateError] if missing.
  String emit(ResourceDef def, {required String providerSource}) {
    throw UnimplementedError('Implemented in Task 9');
  }
}
