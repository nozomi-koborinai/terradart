import 'package:terradart_core/src/synth/output_emitter.dart';

/// Renders a list of [DartConstantSpec]s as a generated Dart source file
/// suitable for writing to `<stack>.app.dart`.
///
/// Output style mirrors `build_runner` / CDKTF generated files:
///
///   - `// GENERATED CODE - DO NOT MODIFY BY HAND` header.
///   - `// dart format off` so the file isn't reformatted by the user's
///     editor or pre-commit hook.
///   - `// ignore_for_file: type=lint` so lint rules don't fire on
///     generated code.
///   - `abstract final class <StackName>Exports` wrapper with private
///     unnamed constructor (cannot be instantiated).
class DartConstantsEmitter {
  /// `stackName` is expected in PascalCase (e.g. `OrdersStack`); the
  /// generated class is named `${stackName}Exports`.
  static String emit({
    required String stackName,
    required List<DartConstantSpec> constants,
  }) {
    final buf = StringBuffer()
      ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND')
      ..writeln('// terradart synth output for stack: $stackName')
      ..writeln('// dart format off')
      ..writeln('// ignore_for_file: type=lint')
      ..writeln()
      ..writeln('abstract final class ${stackName}Exports {')
      ..writeln('  ${stackName}Exports._();');

    if (constants.isEmpty) {
      buf.writeln('}');
      return buf.toString();
    }

    for (final c in constants) {
      buf.writeln();
      final doc = c.doc;
      if (doc != null) {
        for (final line in doc.split('\n')) {
          buf.writeln('  /// $line');
        }
      }
      buf.writeln('  static const ${c.dartType} ${c.name} = ${c.rhs};');
    }

    buf.writeln('}');
    return buf.toString();
  }
}
