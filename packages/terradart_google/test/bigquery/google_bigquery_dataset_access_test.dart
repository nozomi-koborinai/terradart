import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:test/test.dart';

/// Wire-precision tests for the 8-variant `BigqueryDatasetAccess` sealed
/// hierarchy (the README's flagship exactly-one-of example).
///
/// Gate 6 asserts each variant encodes something well-formed; these tests
/// pin the exact principal key per variant and that no sibling principal
/// key leaks into another variant's encoding.
void main() {
  const principalKeys = {
    'user_by_email',
    'group_by_email',
    'special_group',
    'domain',
    'iam_member',
    'view',
    'dataset',
    'routine',
  };

  group('BigqueryDatasetAccess principal variants', () {
    test('each scalar-principal variant encodes its own key + role only', () {
      final variants = <String, BigqueryDatasetAccess>{
        'user_by_email': BigqueryDatasetAccessUserByEmail(
          userByEmail: TfArg.literal('alice@example.com'),
          role: TfArg.literal('READER'),
        ),
        'group_by_email': BigqueryDatasetAccessGroupByEmail(
          groupByEmail: TfArg.literal('data-eng@example.com'),
          role: TfArg.literal('READER'),
        ),
        'special_group': BigqueryDatasetAccessSpecialGroup(
          specialGroup: TfArg.literal('projectOwners'),
          role: TfArg.literal('OWNER'),
        ),
        'domain': BigqueryDatasetAccessDomain(
          domain: TfArg.literal('example.com'),
          role: TfArg.literal('READER'),
        ),
        'iam_member': BigqueryDatasetAccessIamMember(
          iamMember: TfArg.literal(
            'serviceAccount:sa@p.iam.gserviceaccount.com',
          ),
          role: TfArg.literal('READER'),
        ),
      };
      for (final entry in variants.entries) {
        final encoded = entry.value.encode();
        expect(
          encoded.keys.toSet(),
          equals({entry.key, 'role'}),
          reason:
              '${entry.value.runtimeType} must emit only '
              '${entry.key} + role',
        );
        final leaked = principalKeys
            .difference({entry.key})
            .where(encoded.containsKey);
        expect(
          leaked,
          isEmpty,
          reason:
              '${entry.value.runtimeType} leaked sibling principal '
              'key(s): $leaked',
        );
      }
    });

    test('view nests a fully-qualified table reference', () {
      final access = BigqueryDatasetAccessView(
        view: BigqueryDatasetView(
          projectId: TfArg.literal('p'),
          datasetId: RefTo.literal('analytics'),
          tableId: TfArg.literal('daily_view'),
        ),
      );
      expect(
        access.encode(),
        equals({
          'view': [
            {
              'project_id': 'p',
              'dataset_id': 'analytics',
              'table_id': 'daily_view',
            },
          ],
        }),
      );
    });

    test('dataset nests a dataset reference + target_types', () {
      final access = BigqueryDatasetAccessDataset(
        dataset: BigqueryDatasetAccessChild(
          dataset: BigqueryDatasetReference(
            projectId: TfArg.literal('p'),
            datasetId: RefTo.literal('shared'),
          ),
          targetTypes: [TfArg.literal('VIEWS')],
        ),
      );
      expect(
        access.encode(),
        equals({
          'dataset': [
            {
              'dataset': [
                {'project_id': 'p', 'dataset_id': 'shared'},
              ],
              'target_types': ['VIEWS'],
            },
          ],
        }),
      );
    });

    test('routine nests a routine reference and needs no role', () {
      final access = BigqueryDatasetAccessRoutine(
        routine: BigqueryDatasetRoutineRef(
          projectId: TfArg.literal('p'),
          datasetId: RefTo.literal('lib'),
          routineId: TfArg.literal('cleanse'),
        ),
      );
      final encoded = access.encode();
      expect(encoded.keys.toList(), equals(['routine']));
      expect(
        encoded['routine'],
        equals([
          {'project_id': 'p', 'dataset_id': 'lib', 'routine_id': 'cleanse'},
        ]),
      );
    });
  });

  test('GoogleBigqueryDatasetAccess takes an access condition', () {
    final access = GoogleBigqueryDatasetAccess(
      'conditional_reader',
      datasetId: RefTo.literal('analytics'),
      role: TfArg.literal('READER'),
      grantee: .groupByEmail(TfArg.literal('analysts@example.com')),
      condition: BigqueryDatasetAccessCondition(
        expression: TfArg.literal(
          'request.time < timestamp("2027-01-01T00:00:00Z")',
        ),
        title: TfArg.literal('expires'),
      ),
    );
    expect(
      access.argMap['condition']!.toTfJson(),
      equals({
        'expression': 'request.time < timestamp("2027-01-01T00:00:00Z")',
        'title': 'expires',
      }),
    );
  });
}
