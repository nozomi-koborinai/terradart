import '../ir/resource_def.dart';
import 'naming.dart';
import 'sensitive_set_emitter.dart';

/// Emits the **Layer 1** `data_<terraformType>.schema.dart` file for a
/// Terraform **data source**.
///
/// Layer 1 = the schema carrier file: marker abstract type + sensitive-field
/// set + tiny const carrier class. Sits beside the Layer 2 factory wrapper
/// (`DataSourceWrapperEmitter`), which `show $X, xSensitive` imports the
/// symbols this emitter produces.
///
/// Sibling of [AbstractClassEmitter] (resource-side Layer 1). The two
/// share the `emit(def, providerSource:)` shape so the file-emitter layer
/// can dispatch on `WrapperOverrideKind` without special-casing.
///
/// Differences from [AbstractClassEmitter]:
///
/// 1. Produces a **complete file** (with the GENERATED FILE header), not
///    just a body. The resource-side emitter delegates header / imports
///    to `FileEmitter`; the data source side needs to stand alone because
///    its output ships under `lib/src/generated/data_<type>.schema.dart`
///    with no schemantic part-file.
/// 2. The abstract class is intentionally **empty** (`abstract class $X {}`)
///    — data source schemas don't carry input getters; field access happens
///    via TfRef on the Layer 2 wrapper.
/// 3. No `package:schemantic` / `package:terradart_annotations` imports.
///    A minimal data source schema doesn't need them (no `@Schema`,
///    `@StringField`, etc.).
/// 4. The schema-stub carrier class has no leading comment in Layer 1 —
///    that comment is a Layer 2 inline-stub convention only.
///
/// Output is **unformatted** Dart source; the file emitter feeds it through
/// `dart_style.DartFormatter` for deterministic byte-diffs against the
/// hand-written baseline.
class DataSourceClassEmitter {
  const DataSourceClassEmitter();

  /// Emits the full Dart source string for one data source's Layer 1 file.
  ///
  /// - [def]: IR for the data source (terraformType + any attributes).
  ///   Data sources reuse [ResourceDef]; see `ProviderSchemaIR.dataSources`.
  /// - [providerSource]: e.g. `'hashicorp/google'`, embedded in the header
  ///   `// Source: <providerSource> -- data.<terraformType>` line so the
  ///   regen pipeline can trace each file back to its provider origin.
  String emit(ResourceDef def, {required String providerSource}) {
    final pascal = snakeToPascal(def.terraformType);
    final abstractName = '\$$pascal';
    final constName = sensitiveConstName(def.terraformType);
    final stubClassName = '_${pascal}SchemaInstance';
    final tfType = def.terraformType;

    final buf = StringBuffer();

    // File header (2 lines). Note `data.` prefix in the Source: line so
    // the file's origin is unambiguous against the resource-side Layer 1
    // (which uses the bare terraform type).
    buf.writeln('// GENERATED FILE - DO NOT EDIT');
    buf.writeln('// Source: $providerSource -- data.$tfType');
    buf.writeln();

    // Marker abstract. Empty body — concrete getters live in Layer 2.
    buf.writeln(
        '/// Schemantic-style abstract for the `data.$tfType` data source.');
    buf.writeln('abstract class $abstractName {}');
    buf.writeln();

    // Sensitive-field set. Always emitted, even when empty (matches the
    // resource-side convention in `emitSensitiveStaticSet`). Doc comment
    // adds the "Empty per provider schema." suffix for data sources because
    // the set is almost always empty in practice (no provider schema marks
    // data source attributes as sensitive).
    buf.writeln(
        '/// Sensitive field paths for `data.$tfType`. Empty per provider schema.');
    buf.writeln('const Set<String> $constName = <String>{};');
    buf.writeln();

    // Const carrier for `Data<S>.schema`. Three lines, no leading comment
    // (that comment is a Layer 2 inline-stub convention only).
    buf.writeln('class $stubClassName implements $abstractName {');
    buf.writeln('  const $stubClassName();');
    buf.writeln('}');

    return buf.toString();
  }
}
