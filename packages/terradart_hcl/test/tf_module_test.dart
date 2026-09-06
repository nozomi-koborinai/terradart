import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

void main() {
  final src = File('test/fixtures/repeated_blocks.tf').readAsStringSync();
  final module = TfModule.fromHcl(src, fileName: 'repeated_blocks.tf');

  group('TfModule', () {
    test('classifies every top-level block', () {
      expect(module.terraform, hasLength(1));
      expect(module.providers.map((p) => p.alias), [null, 'eu']);
      expect(module.variables.map((v) => v.name), ['project']);
      expect(module.locals.map((l) => l.name), ['labels', 'names']);
      expect(module.outputs.map((o) => o.name), ['url']);
      expect(module.resources.map((r) => r.address), [
        'google_cloud_run_v2_service.svc',
        'google_storage_bucket.b',
        'google_secret_manager_secret.s',
      ]);
      expect(module.dataSources.single.address, 'data.google_project.p');
      expect(module.moduleCalls.single.name, 'network');
      expect(
        module.moduleCalls.single.source!.constantString,
        './modules/network',
      );
      expect(module.opaque.map((o) => o.type), ['moved']);
      expect(module.strayAttributes, isEmpty);
      expect(module.warnings, isEmpty);
    });

    test('terraform settings', () {
      expect(module.requiredVersion!.constantString, '>= 1.5');
      expect(module.backend!.labelTexts, ['gcs']);
      expect(
        module.backend!.body.attribute('bucket')!.value.constantString,
        'tf-state',
      );
      final google = module.requiredProviders['google'] as ObjectExpr;
      expect(google.item('source')!.value.constantString, 'hashicorp/google');
    });

    test('resource accessors', () {
      final svc = module.resource('google_cloud_run_v2_service', 'svc')!;
      expect(svc.type, 'google_cloud_run_v2_service');
      expect(svc.name, 'svc');
      expect(svc.count, isNull);
      expect(svc.forEach, isNull);
      expect(svc.argument('location')!.constantString, 'asia-northeast1');
      expect(
        svc.lifecycle!.attribute('ignore_changes')!.value,
        isA<TupleExpr>(),
      );
      expect(
        svc.body.block('template')!.body.blocksOf('containers'),
        hasLength(2),
      );
      expect(
        svc.sourceText,
        startsWith('resource "google_cloud_run_v2_service" "svc" {'),
      );
      expect(svc.sourceText, endsWith('}'));
      expect(src.contains(svc.sourceText), isTrue);

      final bucket = module.resource('google_storage_bucket', 'b')!;
      expect(bucket.dynamicBlocks.single.labelTexts, ['cors']);
      expect(bucket.body.blocksOf('lifecycle_rule'), hasLength(2));
      expect(bucket.argument('name'), isA<RawExpr>());
      expect(module.resource('nope', 'x'), isNull);
    });

    test('variables, locals and outputs', () {
      final v = module.variable('project')!;
      expect(
        v.type,
        isA<TraversalExpr>().having((t) => t.root, 'root', 'string'),
      );
      expect(v.description!.constantString, 'GCP project');
      expect(v.defaultValue, isNull);
      final labels = module.local('labels')!.value as ObjectExpr;
      expect(labels.item('env')!.value.constantString, 'dev');
      final url = module.output('url')!;
      expect(url.value, isA<TraversalExpr>());
      expect((url.description! as TemplateExpr).isHeredoc, isTrue);
    });

    test('nested arguments in JSON object form', () {
      final m = TfModule.fromTfJson(
        '{"resource": {"t": {"n": {"lifecycle": {"prevent_destroy": true}, "count": 2}}}}',
      );
      final r = m.resources.single;
      expect(
        (r.lifecycle!.attribute('prevent_destroy')!.value as LiteralExpr).value,
        true,
      );
      expect((r.count as LiteralExpr).value, 2);
      expect(r.sourceText, isEmpty);
    });

    test('malformed labels are kept opaque with a warning', () {
      final m = TfModule.fromHcl(
        'resource "only_one" {}\nvariable {}\nx = 1\n',
      );
      expect(m.resources, isEmpty);
      expect(m.opaque.map((o) => o.type), ['resource', 'variable']);
      expect(m.warnings, hasLength(2));
      expect(m.warnings.first.message, contains('1 label'));
      expect(m.strayAttributes.single.name, 'x');
    });

    test('several files merge in order', () {
      final m = TfModule.fromFiles([
        parseHcl('resource "a" "b" {}\n', fileName: 'a.tf'),
        decodeTfJson('{"resource": {"c": {"d": {}}}}', fileName: 'c.tf.json'),
      ]);
      expect(m.resources.map((r) => '${r.file.fileName}:${r.address}'), [
        'a.tf:a.b',
        'c.tf.json:c.d',
      ]);
    });
  });

  group('loadTfModule', () {
    test('reads .tf and .tf.json files sorted by name', () {
      final dir = Directory.systemTemp.createTempSync('terradart_hcl_');
      addTearDown(() => dir.deleteSync(recursive: true));
      File('${dir.path}/b.tf').writeAsStringSync('resource "x" "b" {}\n');
      File(
        '${dir.path}/a.tf.json',
      ).writeAsStringSync('{"resource": {"x": {"a": {}}}}');
      File(
        '${dir.path}/ignored.txt',
      ).writeAsStringSync('resource "x" "no" {}\n');
      final m = loadTfModule(dir);
      expect(m.files, hasLength(2));
      expect(m.resources.map((r) => r.name), ['a', 'b']);
    });

    test('loads the coverage config_tree fixture', () {
      final m = loadTfModule(
        Directory('../terradart_coverage/test/fixtures/config_tree/dev'),
      );
      expect(m.files.map((f) => f.fileName!.split('/').last), [
        'backend.tf',
        'main.tf',
        'variables.tf',
      ]);
      expect(m.backend, isNotNull);
      expect(m.moduleCalls, isNotEmpty);
      expect(m.variables, isNotEmpty);
    });
  });
}
