import 'package:terradart_codegen/src/codegen/wrapper_overrides/loader_errors.dart';
import 'package:test/test.dart';

void main() {
  group('LoaderError', () {
    test('format includes code, message, location', () {
      final err = LoaderError(
        code: LoaderErrorCode.unknownKind,
        message: 'unknown kind "DataSource". Allowed: resource, data_source.',
        filePath: 'lib/yaml/google_pubsub_topic.yaml',
        line: 1,
        column: 7,
      );
      expect(err.format(), '''
[E101] unknown kind "DataSource". Allowed: resource, data_source.
  at lib/yaml/google_pubsub_topic.yaml:1:7''');
    });

    test('format with hint line', () {
      final err = LoaderError(
        code: LoaderErrorCode.outputDirRequired,
        message: 'outputDir is required, e.g. "outputDir: pubsub".',
        filePath: 'a.yaml',
        line: 1,
        column: 1,
        hint: 'Add `outputDir: <dir>` as a top-level key.',
      );
      expect(err.format(), '''
[E102] outputDir is required, e.g. "outputDir: pubsub".
  at a.yaml:1:1
  Hint: Add `outputDir: <dir>` as a top-level key.''');
    });
  });

  group('LoaderErrorReport', () {
    test('aggregates multiple errors with summary', () {
      final report = LoaderErrorReport(errors: [
        LoaderError(
          code: LoaderErrorCode.unknownKind,
          message: 'unknown kind "X".',
          filePath: 'a.yaml',
          line: 1,
          column: 1,
        ),
        LoaderError(
          code: LoaderErrorCode.outputDirRequired,
          message: 'outputDir is required.',
          filePath: 'b.yaml',
          line: 1,
          column: 1,
        ),
      ]);
      final formatted = report.format();
      expect(formatted, contains('[E101]'));
      expect(formatted, contains('[E102]'));
      expect(formatted, contains('2 yaml override(s) failed validation'));
      expect(formatted, contains('Fix all errors above and re-run'));
    });

    test('throws self when fatal()', () {
      final report = LoaderErrorReport(errors: [
        LoaderError(
          code: LoaderErrorCode.unknownKind,
          message: 'x',
          filePath: 'a.yaml',
          line: 1,
          column: 1,
        ),
      ]);
      expect(() => report.fatal(), throwsA(isA<LoaderErrorReport>()));
    });
  });

  test('E402 wrapInitTargetExists is formatted as [E402]', () {
    final err = LoaderError(
      code: LoaderErrorCode.wrapInitTargetExists,
      message: 'foo.yaml already exists. Pass --force to overwrite.',
      filePath: 'out/foo.yaml',
      line: 1,
      column: 1,
    );
    expect(err.format(), startsWith('[E402]'));
    expect(err.format(), contains('already exists'));
  });
}
