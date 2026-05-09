import 'package:terradart_core/src/data.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_ref.dart';

/// Tiny `TfAddressed` stub for tests that don't need a real `Resource`.
class AddressStub implements TfAddressed {
  const AddressStub(this.tfAddress);
  @override
  final String tfAddress;
}

/// Schemantic stand-in. The synth pipeline never inspects it; it only
/// satisfies `Resource<S>.schema`'s typing requirement.
class FakeSchema {
  const FakeSchema();
}

/// Fake `StackProvider` test fixture. `GoogleProvider` (in `terradart_google`)
/// is the real implementation; this stub satisfies the interface for synth
/// tests.
class FakeStackProvider implements StackProvider {
  const FakeStackProvider({
    required this.providerName,
    required this.source,
    required this.versionConstraint,
    this.configArgs = const {},
    this.providerAlias,
  });

  @override
  final String providerName;

  @override
  final String source;

  @override
  final String versionConstraint;

  @override
  final Map<String, Object?> configArgs;

  @override
  final String? providerAlias;

  @override
  Map<String, Object?> toTfJson() => Map<String, Object?>.from(configArgs);
}

/// Minimal concrete `Stack` subclass for tests. `Stack` is abstract; this
/// no-op `synth` lets the runtime exercise it.
class TestStack extends Stack {
  TestStack({super.providers = const [], super.backend});

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError('use StackSynth.synth(...) directly in tests');
}

class FakePubsubTopic extends Resource<FakeSchema> {
  FakePubsubTopic({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_pubsub_topic',
          schema: const FakeSchema(),
        );

  FakePubsubTopic.withMeta({
    required super.localName,
    required super.argMap,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: 'google_pubsub_topic',
          schema: const FakeSchema(),
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

class FakePubsubSubscription extends Resource<FakeSchema> {
  FakePubsubSubscription({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_pubsub_subscription',
          schema: const FakeSchema(),
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

class FakeSecretVersion extends Resource<FakeSchema> {
  FakeSecretVersion({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_secret_manager_secret_version',
          schema: const FakeSchema(),
        );

  @override
  Set<String> get $sensitiveFields => const {'secret_data'};
}

class FakeProjectData extends Data<FakeSchema> {
  FakeProjectData({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_project',
          schema: const FakeSchema(),
        );

  @override
  Set<String> get $sensitiveFields => const {};
}
