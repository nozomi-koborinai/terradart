import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('GoogleProject data source minimal — uses provider default project', () {
    final dp = GoogleProject(localName: 'current');
    expect(dp.terraformType, equals('google_project'));
    expect(dp.kind, equals(ResourceKind.data));
    expect(dp.argMap, isEmpty);
    expect(
      dp.number.interpolation,
      equals(r'${data.google_project.current.number}'),
    );
    expect(
      dp.projectIdRef.interpolation,
      equals(r'${data.google_project.current.project_id}'),
    );
  });

  test('GoogleProject with explicit project_id', () {
    final dp = GoogleProject(
      localName: 'host',
      projectId: TfArg.literal('host-project'),
    );
    expect(dp.argMap.keys.toList(), equals(<String>['project_id']));
    expect(dp.argMap['project_id']!.toTfJson(), equals('host-project'));
  });

  test('GoogleProject is a Data<S> (not Resource)', () {
    final dp = GoogleProject(localName: 'current');
    expect(dp, isA<Data<dynamic>>());
    expect(dp.tfAddress, equals('data.google_project.current'));
  });
}
