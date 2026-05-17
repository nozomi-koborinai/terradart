import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleServiceAccount', () {
    test('localName + accountId produce minimal argMap', () {
      final sa = GoogleServiceAccount(
        localName: 'publisher',
        accountId: TfArg.literal('orders-publisher'),
      );
      expect(sa.terraformType, equals('google_service_account'));
      expect(sa.localName, equals('publisher'));
      expect(sa.argMap.keys.toList(), equals(<String>['account_id']));
      expect(sa.argMap['account_id'], isA<TfArg<String>>());
      expect(sa.argMap['account_id']!.toTfJson(), equals('orders-publisher'));
    });

    test('project parameter threads through', () {
      final sa = GoogleServiceAccount(
        localName: 'sa',
        accountId: TfArg.literal('runner'),
        project: TfArg.literal('my-project'),
      );
      expect(sa.argMap['project']!.toTfJson(), equals('my-project'));
    });

    test('displayName / description survive snake_case keying', () {
      final sa = GoogleServiceAccount(
        localName: 'sa',
        accountId: TfArg.literal('runner'),
        displayName: TfArg.literal('Build runner'),
        description: TfArg.literal('CI build runner SA'),
      );
      expect(sa.argMap['display_name']!.toTfJson(), equals('Build runner'));
      expect(
        sa.argMap['description']!.toTfJson(),
        equals('CI build runner SA'),
      );
      // Spot-check: the camelCase Dart key never leaks into argMap.
      expect(sa.argMap.containsKey('displayName'), isFalse);
      expect(sa.argMap.containsKey('description'), isTrue);
    });

    test('createIgnoreAlreadyExists / disabled survive snake_case keying', () {
      final sa = GoogleServiceAccount(
        localName: 'sa',
        accountId: TfArg.literal('runner'),
        createIgnoreAlreadyExists: TfArg.literal(true),
        disabled: TfArg.literal(false),
      );
      expect(
        sa.argMap['create_ignore_already_exists']!.toTfJson(),
        equals(true),
      );
      expect(sa.argMap['disabled']!.toTfJson(), equals(false));
      expect(sa.argMap.containsKey('createIgnoreAlreadyExists'), isFalse);
    });

    test('lifecycle prevent_destroy threads through to Resource', () {
      final sa = GoogleServiceAccount(
        localName: 'sa',
        accountId: TfArg.literal('runner'),
        lifecycle: const LifecycleOptions(preventDestroy: true),
      );
      expect(sa.lifecycle?.preventDestroy, isTrue);
    });

    test(
        'id / email / name / uniqueId / member produce stable TfRef '
        'interpolations', () {
      final sa = GoogleServiceAccount(
        localName: 'publisher',
        accountId: TfArg.literal('orders-publisher'),
      );
      expect(
        sa.id.interpolation,
        equals(r'${google_service_account.publisher.id}'),
      );
      expect(
        sa.email.interpolation,
        equals(r'${google_service_account.publisher.email}'),
      );
      expect(
        sa.name.interpolation,
        equals(r'${google_service_account.publisher.name}'),
      );
      expect(
        sa.uniqueId.interpolation,
        equals(r'${google_service_account.publisher.unique_id}'),
      );
      expect(
        sa.member.interpolation,
        equals(r'${google_service_account.publisher.member}'),
      );
    });

    test('\$sensitiveFields exposes generated set (empty for SA)', () {
      final sa = GoogleServiceAccount(
        localName: 'sa',
        accountId: TfArg.literal('runner'),
      );
      expect(sa.$sensitiveFields, isEmpty);
    });

    test('\$tfType constant matches terraformType', () {
      final sa = GoogleServiceAccount(
        localName: 'sa',
        accountId: TfArg.literal('runner'),
      );
      expect(GoogleServiceAccount.$tfType, equals('google_service_account'));
      expect(sa.terraformType, equals(GoogleServiceAccount.$tfType));
    });
  });
}
