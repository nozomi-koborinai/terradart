import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:test/test.dart';

void main() {
  group('WrapperOverride 4 new axes', () {
    test('kind defaults to resource', () {
      const override = WrapperOverride(outputDir: 'pubsub');
      expect(override.kind, WrapperOverrideKind.resource);
    });

    test('schemaStubBodyMode defaults to nosuchmethod', () {
      const override = WrapperOverride(outputDir: 'pubsub');
      expect(override.schemaStubBodyMode, SchemaStubBodyMode.nosuchmethod);
    });

    test('outputDir is stored', () {
      const override = WrapperOverride(outputDir: 'pubsub');
      expect(override.outputDir, 'pubsub');
    });

    test('fileLeadingComment is null by default', () {
      const override = WrapperOverride(outputDir: 'pubsub');
      expect(override.fileLeadingComment, isNull);
    });

    test('data source kind with bare stub mode', () {
      const override = WrapperOverride(
        outputDir: 'data',
        kind: WrapperOverrideKind.dataSource,
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        fileLeadingComment: 'Operational note',
      );
      expect(override.kind, WrapperOverrideKind.dataSource);
      expect(override.schemaStubBodyMode, SchemaStubBodyMode.bare);
      expect(override.fileLeadingComment, 'Operational note');
    });
  });
}
