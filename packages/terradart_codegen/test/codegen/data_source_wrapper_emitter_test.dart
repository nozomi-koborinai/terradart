import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/data_source_wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/generated_file_header.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

/// Pre-staged minimal v7 fixture (project_id / number / name / id, all
/// scalar). Used by every L2b case so we can vary the override but keep the
/// IR fixed.
late final ResourceDef _googleProject;

void main() {
  setUpAll(() {
    final src = File(
      p.join('test', 'fixtures', 'schema', 'google_project_v7.schema.json'),
    ).readAsStringSync();
    final ir = const SchemaJsonParser().parseString(
      src,
      providerVersion: '7.31.0',
    );
    _googleProject = ir.dataSources['google_project']!;
  });

  group('DataSourceWrapperEmitter', () {
    // L2b-1 — minimal override drives the bare-stub data source surface.
    //
    // The override carries no extras (no fileLeadingComment, no
    // classDocComment, no extraGetters). What we are exercising is the
    // emitter's MUST-EMIT spine: it has to produce a wrapper class header
    // that says `extends Data<$GoogleProject>` regardless of override
    // verbosity. Any drift here is a regression in the spine, not the
    // hand-curation layer.
    test('L2b-1 minimal: emits Data<\$GoogleProject> wrapper header', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(
        out,
        contains(
          'final class GoogleProject extends Data<\$GoogleProject> {',
        ),
      );
    });

    // L2b-2 — Level A byte-identical: the full production override (sourced
    // from `lib/src/codegen/wrapper_overrides/yaml/google_project.yaml`)
    // must produce, after `dart_style` formatting plus the two-line
    // `generatedFileHeader` prepended, the same bytes as the
    // hand-written baseline copied into the golden file.
    //
    // This is the make-or-break check for the data source emitter. The
    // golden is the source of truth: if formatted output diverges, the
    // emitter is wrong, not the golden.
    test('L2b-2 Level A: production yaml emit matches golden byte-for-byte',
        () {
      final overrides = loadWrapperOverrides(
        rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
      ).dataSources;
      final emitter = DataSourceWrapperEmitter(overrides: overrides);
      final raw = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      final formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
      final String formatted;
      try {
        formatted = formatter.format(raw);
      } on FormatterException catch (e) {
        fail(
          'Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw',
        );
      }
      // The golden carries the 2-line `// GENERATED FILE` header that the
      // wrap pipeline prepends to every emitted file. The emitter itself
      // doesn't emit that header (the pipeline does), so we prepend
      // before comparing.
      final actual = '$generatedFileHeader$formatted';
      final expected = File(
        'test/golden/google_project.factory.expected.dart.golden',
      ).readAsStringSync();
      expect(actual, equals(expected));
    });

    // L2b-3 — extraGetters axis is honored.
    //
    // Mirrors WrapperEmitter's extraGetters behavior: the verbatim snippet
    // (with its own indent + trailing newline) is appended after the
    // `$sensitiveFields` getter and before the class's closing brace.
    test('L2b-3 extraGetters: injected verbatim into the wrapper class', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
        extraGetters:
            "  TfRef<String> get number => TfRef.attribute<String>(this, 'number');\n",
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(
        out,
        contains(
          "TfRef<String> get number => TfRef.attribute<String>(this, 'number');",
        ),
      );
    });

    // L2b-4 — extends Data<S>, not Resource<S>.
    //
    // The whole reason DataSourceWrapperEmitter exists alongside
    // WrapperEmitter is to swap the base class. Asserting both the
    // positive (Data<...) and the negative (no Resource<...) catches a
    // copy-paste regression where the emitter accidentally reuses
    // WrapperEmitter's `extends Resource<` line.
    test('L2b-4: extends Data<S> and not Resource<S>', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(out, contains('extends Data<'));
      expect(out, isNot(contains('extends Resource<')));
    });

    // L2b-5 — sensitive set is emitted inline as an empty const.
    //
    // Data source schemas are typically empty (no sensitive fields), and
    // the data source emitter inlines the const set rather than importing
    // it from a `.schema.dart` file (because data sources don't ship a
    // schema-class file in v0.0.x). Asserting the exact line shape is the
    // easiest way to detect drift in either the doc comment or the
    // `<String>{}` literal.
    test('L2b-5 sensitive set: emitted inline as empty const', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(
        out,
        contains('const Set<String> googleProjectSensitive = <String>{}'),
      );
    });
  });
}
