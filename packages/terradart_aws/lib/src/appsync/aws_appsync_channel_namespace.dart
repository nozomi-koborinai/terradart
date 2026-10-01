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

  final List<AppsyncChannelNamespaceOnPublish>? onPublish;

  final List<AppsyncChannelNamespaceOnSubscribe>? onSubscribe;

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
final class AppsyncChannelNamespaceOnPublish {
  const AppsyncChannelNamespaceOnPublish({
    required this.behavior,
    this.integration,
  });

  final TfArg<AppsyncChannelNamespaceBehavior> behavior;

  final List<AppsyncChannelNamespaceIntegration>? integration;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (integration != null)
      'integration': [for (final e in integration!) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
enum AppsyncChannelNamespaceBehavior implements TerraformEnum {
  code('CODE'),
  direct('DIRECT');

  const AppsyncChannelNamespaceBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `handler_configs.on_publish.integration` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppsyncChannelNamespaceIntegration {
  const AppsyncChannelNamespaceIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  final TfArg<String> dataSourceName;

  final List<AppsyncChannelNamespaceLambdaConfig>? lambdaConfig;

  Map<String, Object?> encode() => {
    'data_source_name': dataSourceName.toTfJson(),
    if (lambdaConfig != null)
      'lambda_config': [for (final e in lambdaConfig!) e.encode()],
  };
}

/// Typed helper for the `handler_configs.on_publish.integration.lambda_config` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppsyncChannelNamespaceLambdaConfig {
  const AppsyncChannelNamespaceLambdaConfig({this.invokeType});

  final TfArg<AppsyncChannelNamespaceInvokeType>? invokeType;

  Map<String, Object?> encode() => {'invoke_type': ?invokeType?.toTfJson()};
}

/// `invoke_type` — derived from the provider schema description.
enum AppsyncChannelNamespaceInvokeType implements TerraformEnum {
  requestResponse('REQUEST_RESPONSE'),
  event('EVENT');

  const AppsyncChannelNamespaceInvokeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `handler_configs.on_subscribe` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceOnSubscribe {
  const AppsyncChannelNamespaceOnSubscribe({
    required this.behavior,
    this.integration,
  });

  final TfArg<AppsyncChannelNamespaceBehavior> behavior;

  final List<AppsyncChannelNamespaceIntegration>? integration;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (integration != null)
      'integration': [for (final e in integration!) e.encode()],
  };
}

/// Typed helper for the `publish_auth_mode` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespacePublishAuthMode {
  const AppsyncChannelNamespacePublishAuthMode({required this.authType});

  final TfArg<AppsyncChannelNamespaceAuthType> authType;

  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// `auth_type` — derived from the provider schema description.
enum AppsyncChannelNamespaceAuthType implements TerraformEnum {
  apiKey('API_KEY'),
  awsIam('AWS_IAM'),
  amazonCognitoUserPools('AMAZON_COGNITO_USER_POOLS'),
  openidConnect('OPENID_CONNECT'),
  awsLambda('AWS_LAMBDA');

  const AppsyncChannelNamespaceAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `subscribe_auth_mode` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceSubscribeAuthMode {
  const AppsyncChannelNamespaceSubscribeAuthMode({required this.authType});

  final TfArg<AppsyncChannelNamespaceAuthType> authType;

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
           'code_handlers': ?codeHandlers,
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncChannelNamespace>`.
  RefTo<AwsAppsyncChannelNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `channel_namespace_arn` attribute.
  TfRef<String> get channelNamespaceArn =>
      TfRef.attribute<String>(this, 'channel_namespace_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiIdRef => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `code_handlers` attribute.
  TfRef<String> get codeHandlersRef =>
      TfRef.attribute<String>(this, 'code_handlers');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
