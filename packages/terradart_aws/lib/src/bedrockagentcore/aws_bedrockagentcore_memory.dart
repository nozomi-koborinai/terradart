// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
  };
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

  final TfArg<String>? level;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (level != null) 'level': level!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_memory`.
final class AwsBedrockagentcoreMemory extends Resource {
  static const String tfType = 'aws_bedrockagentcore_memory';

  AwsBedrockagentcoreMemory({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? encryptionKeyArn,
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
           if (description != null) 'description': description,
           if (encryptionKeyArn != null) 'encryption_key_arn': encryptionKeyArn,
           'event_expiry_duration': eventExpiryDuration,
           if (memoryExecutionRoleArn != null)
             'memory_execution_role_arn': memoryExecutionRoleArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
