// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagentcore_memory`.
const Set<String> _awsBedrockagentcoreMemorySensitive = <String>{};

/// Typed helper for the `indexed_key` block of
/// `aws_bedrockagentcore_memory` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryIndexedKey {
  const BedrockagentcoreMemoryIndexedKey({
    required this.key,
    required this.type,
  });

  final TfArg<String> key;

  final TfArg<BedrockagentcoreMemoryIndexedKeyType> type;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentcoreMemoryIndexedKeyType implements TerraformEnum {
  string('STRING'),
  stringlist('STRINGLIST'),
  number('NUMBER');

  const BedrockagentcoreMemoryIndexedKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `stream_delivery_resources` block of
/// `aws_bedrockagentcore_memory` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStreamDeliveryResources {
  const BedrockagentcoreMemoryStreamDeliveryResources({this.resource});

  final List<BedrockagentcoreMemoryStreamDeliveryResourcesResource>? resource;

  Map<String, Object?> encode() => {
    if (resource != null) 'resource': [for (final e in resource!) e.encode()],
  };
}

/// Typed helper for the `stream_delivery_resources.resource` block of
/// `aws_bedrockagentcore_memory` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStreamDeliveryResourcesResource {
  const BedrockagentcoreMemoryStreamDeliveryResourcesResource({this.kinesis});

  final List<BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesis>?
  kinesis;

  Map<String, Object?> encode() => {
    if (kinesis != null) 'kinesis': [for (final e in kinesis!) e.encode()],
  };
}

/// Typed helper for the `stream_delivery_resources.resource.kinesis` block of
/// `aws_bedrockagentcore_memory` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesis {
  const BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesis({
    required this.dataStreamArn,
    this.contentConfiguration,
  });

  final TfArg<String> dataStreamArn;

  final List<
    BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration
  >?
  contentConfiguration;

  Map<String, Object?> encode() => {
    'data_stream_arn': dataStreamArn.toTfJson(),
    if (contentConfiguration != null)
      'content_configuration': [
        for (final e in contentConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `stream_delivery_resources.resource.kinesis.content_configuration` block of
/// `aws_bedrockagentcore_memory` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration {
  const BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration({
    this.level,
    required this.type,
  });

  final TfArg<
    BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfigurationLevel
  >?
  level;

  final TfArg<
    BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfigurationType
  >
  type;

  Map<String, Object?> encode() => {
    'level': ?level?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
enum BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfigurationLevel
    implements TerraformEnum {
  metadataOnly('METADATA_ONLY'),
  fullContent('FULL_CONTENT');

  const BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfigurationLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfigurationType
    implements TerraformEnum {
  memoryRecords('MEMORY_RECORDS');

  const BedrockagentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagentcore_memory`.
final class AwsBedrockagentcoreMemory extends Resource {
  static const String tfType = 'aws_bedrockagentcore_memory';

  AwsBedrockagentcoreMemory({
    required super.localName,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? encryptionKeyArn,
    required TfArg<num> eventExpiryDuration,
    TfArg<String>? memoryExecutionRoleArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreMemoryIndexedKey>? indexedKey,
    List<BedrockagentcoreMemoryStreamDeliveryResources>?
    streamDeliveryResources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn'),
           'event_expiry_duration': eventExpiryDuration,
           'memory_execution_role_arn': ?memoryExecutionRoleArn,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (indexedKey != null)
             'indexed_key': TfArg.literal([
               for (final e in indexedKey) e.encode(),
             ]),
           if (streamDeliveryResources != null)
             'stream_delivery_resources': TfArg.literal([
               for (final e in streamDeliveryResources) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreMemorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreMemory>`.
  RefTo<AwsBedrockagentcoreMemory> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption_key_arn` attribute.
  TfRef<String> get encryptionKeyArnRef =>
      TfRef.attribute<String>(this, 'encryption_key_arn');

  /// Reference to `event_expiry_duration` attribute.
  TfRef<num> get eventExpiryDurationRef =>
      TfRef.attribute<num>(this, 'event_expiry_duration');

  /// Reference to `memory_execution_role_arn` attribute.
  TfRef<String> get memoryExecutionRoleArnRef =>
      TfRef.attribute<String>(this, 'memory_execution_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
