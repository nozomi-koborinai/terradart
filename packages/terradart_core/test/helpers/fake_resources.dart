import 'package:terradart_core/src/data.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';

/// Tiny `TfAddressed` stub for tests that don't need a real `Resource`.
class AddressStub implements TfAddressed {
  const AddressStub(this.tfAddress);
  @override
  final String tfAddress;
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

/// Minimal concrete `Stack` subclass for tests. Uses the default
/// [Stack.synth] implementation.
final class TestStack extends Stack {
  TestStack({super.providers = const [], super.backend, super.devMode});
}

/// Generic non-capable fake resource for injection tests.
/// `terraformType` is `'fake_thing'`; `$supportsDeletionProtection` defaults
/// to `false` (base class behaviour).
final class FakeResource extends Resource {
  FakeResource({
    required super.localName,
    required TfArg<String> name,
  }) : super(
          terraformType: 'fake_thing',
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

final class FakePubsubTopic extends Resource {
  FakePubsubTopic({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_pubsub_topic',
        );

  FakePubsubTopic.withMeta({
    required super.localName,
    required super.argMap,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: 'google_pubsub_topic',
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

final class FakePubsubSubscription extends Resource {
  FakePubsubSubscription({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_pubsub_subscription',
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

final class FakeSecretVersion extends Resource {
  FakeSecretVersion({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_secret_manager_secret_version',
        );

  @override
  Set<String> get $sensitiveFields => const {'secret_data'};
}

final class FakeProjectData extends Data {
  FakeProjectData({
    required super.localName,
    required super.argMap,
  }) : super(
          terraformType: 'google_project',
        );

  @override
  Set<String> get $sensitiveFields => const {};
}
