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

  @internal
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

  final AppsyncChannelNamespaceBehavior behavior;

  final List<AppsyncChannelNamespaceIntegration>? integration;

  @internal
  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (integration != null)
      'integration': [for (final e in integration!) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
extension type const AppsyncChannelNamespaceBehavior._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncChannelNamespaceBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncChannelNamespaceBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncChannelNamespaceBehavior.arg(TfArg<String> arg) : this._(arg);

  static const code = AppsyncChannelNamespaceBehavior._(TfArgLiteral('CODE'));
  static const direct = AppsyncChannelNamespaceBehavior._(
    TfArgLiteral('DIRECT'),
  );

  static const List<AppsyncChannelNamespaceBehavior> values = [code, direct];
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

  @internal
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

  final AppsyncChannelNamespaceInvokeType? invokeType;

  @internal
  Map<String, Object?> encode() => {'invoke_type': ?invokeType?.toTfJson()};
}

/// `invoke_type` — derived from the provider schema description.
extension type const AppsyncChannelNamespaceInvokeType._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncChannelNamespaceInvokeType.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncChannelNamespaceInvokeType.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncChannelNamespaceInvokeType.arg(TfArg<String> arg) : this._(arg);

  static const requestResponse = AppsyncChannelNamespaceInvokeType._(
    TfArgLiteral('REQUEST_RESPONSE'),
  );
  static const event = AppsyncChannelNamespaceInvokeType._(
    TfArgLiteral('EVENT'),
  );

  static const List<AppsyncChannelNamespaceInvokeType> values = [
    requestResponse,
    event,
  ];
}

/// Typed helper for the `handler_configs.on_subscribe` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceOnSubscribe {
  const AppsyncChannelNamespaceOnSubscribe({
    required this.behavior,
    this.integration,
  });

  final AppsyncChannelNamespaceBehavior behavior;

  final List<AppsyncChannelNamespaceIntegration>? integration;

  @internal
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

  final AppsyncChannelNamespaceAuthType authType;

  @internal
  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// `auth_type` — derived from the provider schema description.
extension type const AppsyncChannelNamespaceAuthType._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncChannelNamespaceAuthType.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncChannelNamespaceAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncChannelNamespaceAuthType.arg(TfArg<String> arg) : this._(arg);

  static const apiKey = AppsyncChannelNamespaceAuthType._(
    TfArgLiteral('API_KEY'),
  );
  static const awsIam = AppsyncChannelNamespaceAuthType._(
    TfArgLiteral('AWS_IAM'),
  );
  static const amazonCognitoUserPools = AppsyncChannelNamespaceAuthType._(
    TfArgLiteral('AMAZON_COGNITO_USER_POOLS'),
  );
  static const openidConnect = AppsyncChannelNamespaceAuthType._(
    TfArgLiteral('OPENID_CONNECT'),
  );
  static const awsLambda = AppsyncChannelNamespaceAuthType._(
    TfArgLiteral('AWS_LAMBDA'),
  );

  static const List<AppsyncChannelNamespaceAuthType> values = [
    apiKey,
    awsIam,
    amazonCognitoUserPools,
    openidConnect,
    awsLambda,
  ];
}

/// Typed helper for the `subscribe_auth_mode` block of
/// `aws_appsync_channel_namespace` (derived from provider schema).
@immutable
final class AppsyncChannelNamespaceSubscribeAuthMode {
  const AppsyncChannelNamespaceSubscribeAuthMode({required this.authType});

  final AppsyncChannelNamespaceAuthType authType;

  @internal
  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Factory wrapper for `aws_appsync_channel_namespace`.
final class AwsAppsyncChannelNamespace extends Resource {
  static const String tfType = 'aws_appsync_channel_namespace';

  AwsAppsyncChannelNamespace(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `channel_namespace_arn` attribute.
  TfRef<String> get channelNamespaceArn =>
      TfRef.attribute<String>(this, 'channel_namespace_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `code_handlers` attribute.
  TfRef<String> get codeHandlers =>
      TfRef.attribute<String>(this, 'code_handlers');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
