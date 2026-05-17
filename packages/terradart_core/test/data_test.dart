import 'package:terradart_core/src/data.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

class _FakeProjectData extends Data {
  _FakeProjectData({
    required super.localName,
    required TfArg<String> projectId,
  }) : super(
          terraformType: 'google_project',
          argMap: {'project_id': projectId},
        );

  @override
  Set<String> get $sensitiveFields => const {};

  TfRef<String> get number => TfRef.data<String>(this, 'number');
}

void main() {
  group('Data', () {
    final d = _FakeProjectData(
      localName: 'current',
      projectId: const TfArgLiteral('my-proj'),
    );

    test('kind is ResourceKind.data', () {
      expect(d.kind, ResourceKind.data);
    });

    test('tfAddress is prefixed with data.', () {
      expect(d.tfAddress, 'data.google_project.current');
    });

    test('exposes TfRef<T> via TfRef.data factory', () {
      expect(d.number.interpolation, r'${data.google_project.current.number}');
      expect(d.number.bareAddress, 'data.google_project.current.number');
    });
  });
}
