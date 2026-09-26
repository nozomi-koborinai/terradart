// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_quick_connect`.
const Set<String> _awsConnectQuickConnectSensitive = <String>{};

/// Typed helper for the `quick_connect_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectQuickConnectConfig {
  const ConnectQuickConnectQuickConnectConfig({
    required this.quickConnectType,
    this.phoneConfig,
    this.queueConfig,
    this.userConfig,
  });

  final TfArg<String> quickConnectType;

  final List<ConnectQuickConnectQuickConnectConfigPhoneConfig>? phoneConfig;

  final List<ConnectQuickConnectQuickConnectConfigQueueConfig>? queueConfig;

  final List<ConnectQuickConnectQuickConnectConfigUserConfig>? userConfig;

  Map<String, Object?> encode() => {
    'quick_connect_type': quickConnectType.toTfJson(),
    if (phoneConfig != null)
      'phone_config': [for (final e in phoneConfig!) e.encode()],
    if (queueConfig != null)
      'queue_config': [for (final e in queueConfig!) e.encode()],
    if (userConfig != null)
      'user_config': [for (final e in userConfig!) e.encode()],
  };
}

/// Typed helper for the `quick_connect_config.phone_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectQuickConnectConfigPhoneConfig {
  const ConnectQuickConnectQuickConnectConfigPhoneConfig({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `quick_connect_config.queue_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectQuickConnectConfigQueueConfig {
  const ConnectQuickConnectQuickConnectConfigQueueConfig({
    required this.contactFlowId,
    required this.queueId,
  });

  final TfArg<String> contactFlowId;

  final TfArg<String> queueId;

  Map<String, Object?> encode() => {
    'contact_flow_id': contactFlowId.toTfJson(),
    'queue_id': queueId.toTfJson(),
  };
}

/// Typed helper for the `quick_connect_config.user_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectQuickConnectConfigUserConfig {
  const ConnectQuickConnectQuickConnectConfigUserConfig({
    required this.contactFlowId,
    required this.userId,
  });

  final TfArg<String> contactFlowId;

  final TfArg<String> userId;

  Map<String, Object?> encode() => {
    'contact_flow_id': contactFlowId.toTfJson(),
    'user_id': userId.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_quick_connect`.
final class AwsConnectQuickConnect extends Resource {
  static const String tfType = 'aws_connect_quick_connect';

  AwsConnectQuickConnect({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required ConnectQuickConnectQuickConnectConfig quickConnectConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'instance_id': instanceId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'quick_connect_config': TfArg.literal(quickConnectConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectQuickConnectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `quick_connect_id` attribute.
  TfRef<String> get quickConnectId =>
      TfRef.attribute<String>(this, 'quick_connect_id');
}
