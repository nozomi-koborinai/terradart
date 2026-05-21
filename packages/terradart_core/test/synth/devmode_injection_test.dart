import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';

class _CapableResource extends Resource {
  _CapableResource({required super.localName, required TfArg<String> name})
      : super(
          terraformType: 'fake_protected_thing',
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};

  @override
  bool get $supportsDeletionProtection => true;
}

class _CapableResourceWithExplicitDP extends Resource {
  _CapableResourceWithExplicitDP({
    required super.localName,
    required TfArg<String> name,
    required TfArg<bool> deletionProtection,
  }) : super(
          terraformType: 'fake_protected_thing',
          argMap: {
            'name': name,
            'deletion_protection': deletionProtection,
          },
        );

  @override
  Set<String> get $sensitiveFields => const {};

  @override
  bool get $supportsDeletionProtection => true;
}

void main() {
  group('TfJsonEncoder devMode injection', () {
    test('devMode=true + capable resource + no explicit DP → injects false',
        () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        devMode: true,
      );
      stack.add(_CapableResource(
        localName: 'r',
        name: const TfArgLiteral('x'),
      ),);

      final group = TfJsonEncoder.resourcesGroup(stack);
      expect(group, isNotNull);
      final block = group!['fake_protected_thing']!['r']
          as Map<String, dynamic>;
      expect(block['deletion_protection'], equals(false));
    });

    test('devMode=true + capable + explicit DP=true → consumer wins', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        devMode: true,
      );
      stack.add(_CapableResourceWithExplicitDP(
        localName: 'r',
        name: const TfArgLiteral('x'),
        deletionProtection: const TfArgLiteral<bool>(true),
      ),);

      final group = TfJsonEncoder.resourcesGroup(stack);
      final block = group!['fake_protected_thing']!['r']
          as Map<String, dynamic>;
      expect(block['deletion_protection'], equals(true));
    });

    test('devMode=false + capable resource → no injection', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      ); // devMode default false
      stack.add(_CapableResource(
        localName: 'r',
        name: const TfArgLiteral('x'),
      ),);

      final group = TfJsonEncoder.resourcesGroup(stack);
      final block = group!['fake_protected_thing']!['r']
          as Map<String, dynamic>;
      expect(block.containsKey('deletion_protection'), isFalse);
    });

    test('devMode=true + non-capable resource → no injection', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        devMode: true,
      );
      stack.add(FakeResource(
        localName: 'r',
        name: const TfArgLiteral('x'),
      ),);

      final group = TfJsonEncoder.resourcesGroup(stack);
      final block =
          group!['fake_thing']!['r'] as Map<String, dynamic>;
      expect(block.containsKey('deletion_protection'), isFalse);
    });
  });
}
