// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_channel_namespace`.
const Set<String> _awsAppsyncChannelNamespaceSensitive = <String>{};

/// Typed helper for the `handler_configs` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigs {
  const AppsyncChannelNamespaceHandlerConfigs({
    this.onPublish,
    this.onSubscribe,
  });

  final List<AppsyncChannelNamespaceHandlerConfigsOnPublish>? onPublish;

  final List<AppsyncChannelNamespaceHandlerConfigsOnSubscribe>? onSubscribe;

  Map<String, Object?> encode() => {
    if (onPublish != null)
      'on_publish': [for (final e in onPublish!) e.encode()],
    if (onSubscribe != null)
      'on_subscribe': [for (final e in onSubscribe!) e.encode()],
  };
}

/// Typed helper for the `handler_configs.on_publish` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigsOnPublish {
  const AppsyncChannelNamespaceHandlerConfigsOnPublish({
    required this.behavior,
    this.integration,
  });

  final TfArg<String> behavior;

  final List<AppsyncChannelNamespaceHandlerConfigsOnPublishIntegration>?
  integration;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (integration != null)
      'integration': [for (final e in integration!) e.encode()],
  };
}

/// Typed helper for the `handler_configs.on_publish.integration` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigsOnPublishIntegration {
  const AppsyncChannelNamespaceHandlerConfigsOnPublishIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  final TfArg<String> dataSourceName;

  final List<
    AppsyncChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig
  >?
  lambdaConfig;

  Map<String, Object?> encode() => {
    'data_source_name': dataSourceName.toTfJson(),
    if (lambdaConfig != null)
      'lambda_config': [for (final e in lambdaConfig!) e.encode()],
  };
}

/// Typed helper for the `handler_configs.on_publish.integration.lambda_config` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig {
  const AppsyncChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig({
    this.invokeType,
  });

  final TfArg<String>? invokeType;

  Map<String, Object?> encode() => {
    if (invokeType != null) 'invoke_type': invokeType!.toTfJson(),
  };
}

/// Typed helper for the `handler_configs.on_subscribe` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigsOnSubscribe {
  const AppsyncChannelNamespaceHandlerConfigsOnSubscribe({
    required this.behavior,
    this.integration,
  });

  final TfArg<String> behavior;

  final List<AppsyncChannelNamespaceHandlerConfigsOnSubscribeIntegration>?
  integration;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (integration != null)
      'integration': [for (final e in integration!) e.encode()],
  };
}

/// Typed helper for the `handler_configs.on_subscribe.integration` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigsOnSubscribeIntegration {
  const AppsyncChannelNamespaceHandlerConfigsOnSubscribeIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  final TfArg<String> dataSourceName;

  final List<
    AppsyncChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig
  >?
  lambdaConfig;

  Map<String, Object?> encode() => {
    'data_source_name': dataSourceName.toTfJson(),
    if (lambdaConfig != null)
      'lambda_config': [for (final e in lambdaConfig!) e.encode()],
  };
}

/// Typed helper for the `handler_configs.on_subscribe.integration.lambda_config` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig {
  const AppsyncChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig({
    this.invokeType,
  });

  final TfArg<String>? invokeType;

  Map<String, Object?> encode() => {
    if (invokeType != null) 'invoke_type': invokeType!.toTfJson(),
  };
}

/// Typed helper for the `publish_auth_mode` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespacePublishAuthMode {
  const AppsyncChannelNamespacePublishAuthMode({required this.authType});

  final TfArg<String> authType;

  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `subscribe_auth_mode` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceSubscribeAuthMode {
  const AppsyncChannelNamespaceSubscribeAuthMode({required this.authType});

  final TfArg<String> authType;

  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Factory wrapper for `aws_appsync_channel_namespace`.
final class AwsAppsyncChannelNamespace extends Resource {
  static const String tfType = 'aws_appsync_channel_namespace';

  AwsAppsyncChannelNamespace({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? codeHandlers,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppsyncChannelNamespaceHandlerConfigs>? handlerConfigs,
    List<AppsyncChannelNamespacePublishAuthMode>? publishAuthMode,
    List<AppsyncChannelNamespaceSubscribeAuthMode>? subscribeAuthMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (codeHandlers != null) 'code_handlers': codeHandlers,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (handlerConfigs != null)
             'handler_configs': TfArg.literal([
               for (final e in handlerConfigs) e.encode(),
             ]),
           if (publishAuthMode != null)
             'publish_auth_mode': TfArg.literal([
               for (final e in publishAuthMode) e.encode(),
             ]),
           if (subscribeAuthMode != null)
             'subscribe_auth_mode': TfArg.literal([
               for (final e in subscribeAuthMode) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncChannelNamespaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `channel_namespace_arn` attribute.
  TfRef<String> get channelNamespaceArn =>
      TfRef.attribute<String>(this, 'channel_namespace_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
