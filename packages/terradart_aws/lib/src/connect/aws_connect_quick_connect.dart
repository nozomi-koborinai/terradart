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
final class ConnectQuickConnectConfig {
  const ConnectQuickConnectConfig({
    required this.quickConnectType,
    this.phoneConfig,
    this.queueConfig,
    this.userConfig,
  });

  final ConnectQuickConnectType quickConnectType;

  final List<ConnectQuickConnectPhoneConfig>? phoneConfig;

  final List<ConnectQuickConnectQueueConfig>? queueConfig;

  final List<ConnectQuickConnectUserConfig>? userConfig;

  @internal
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

/// `quick_connect_type` — derived from the provider schema description.
extension type const ConnectQuickConnectType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectQuickConnectType.variable(String name) : this._(TfArg.variable(name));
  ConnectQuickConnectType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectQuickConnectType.arg(TfArg<String> arg) : this._(arg);

  static const user = ConnectQuickConnectType._(TfArgLiteral('USER'));
  static const queue = ConnectQuickConnectType._(TfArgLiteral('QUEUE'));
  static const phoneNumber = ConnectQuickConnectType._(
    TfArgLiteral('PHONE_NUMBER'),
  );
  static const flow = ConnectQuickConnectType._(TfArgLiteral('FLOW'));

  static const List<ConnectQuickConnectType> values = [
    user,
    queue,
    phoneNumber,
    flow,
  ];
}

/// Typed helper for the `quick_connect_config.phone_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectPhoneConfig {
  const ConnectQuickConnectPhoneConfig({required this.phoneNumber});

  final TfArg<String> phoneNumber;

  @internal
  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `quick_connect_config.queue_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectQueueConfig {
  const ConnectQuickConnectQueueConfig({
    required this.contactFlowId,
    required this.queueId,
  });

  final TfArg<String> contactFlowId;

  final TfArg<String> queueId;

  @internal
  Map<String, Object?> encode() => {
    'contact_flow_id': contactFlowId.toTfJson(),
    'queue_id': queueId.toTfJson(),
  };
}

/// Typed helper for the `quick_connect_config.user_config` block of
/// `aws_connect_quick_connect` (derived from provider schema).
@immutable
final class ConnectQuickConnectUserConfig {
  const ConnectQuickConnectUserConfig({
    required this.contactFlowId,
    required this.userId,
  });

  final TfArg<String> contactFlowId;

  final TfArg<String> userId;

  @internal
  Map<String, Object?> encode() => {
    'contact_flow_id': contactFlowId.toTfJson(),
    'user_id': userId.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_quick_connect`.
final class AwsConnectQuickConnect extends Resource {
  static const String tfType = 'aws_connect_quick_connect';

  AwsConnectQuickConnect(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required ConnectQuickConnectConfig quickConnectConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'instance_id': instanceId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'quick_connect_config': TfArg.literal(quickConnectConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectQuickConnectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectQuickConnect>`.
  RefTo<AwsConnectQuickConnect> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `quick_connect_id` attribute.
  TfRef<String> get quickConnectId =>
      TfRef.attribute<String>(this, 'quick_connect_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
