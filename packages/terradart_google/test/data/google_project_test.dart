import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test(
    'DataGoogleProject data source minimal — uses provider default project',
    () {
      final dp = DataGoogleProject('current');
      expect(dp.terraformType, equals('google_project'));
      expect(dp.kind, equals(ResourceKind.data));
      expect(dp.argMap, isEmpty);
      expect(
        dp.number.interpolation,
        equals(r'${data.google_project.current.number}'),
      );
      expect(
        dp.projectId.interpolation,
        equals(r'${data.google_project.current.project_id}'),
      );
    },
  );

  test('DataGoogleProject with explicit project_id', () {
    final dp = DataGoogleProject(
      'host',
      projectId: TfArg.literal('host-project'),
    );
    expect(dp.argMap.keys.toList(), equals(<String>['project_id']));
    expect(dp.argMap['project_id']!.toTfJson(), equals('host-project'));
  });

  test('DataGoogleProject is a Data (not Resource)', () {
    final dp = DataGoogleProject('current');
    expect(dp, isA<Data>());
    expect(dp.tfAddress, equals('data.google_project.current'));
  });
}
