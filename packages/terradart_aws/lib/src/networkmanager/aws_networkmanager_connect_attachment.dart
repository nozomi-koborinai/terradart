// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_connect_attachment`.
const Set<String> _awsNetworkmanagerConnectAttachmentSensitive = <String>{};

/// Typed helper for the `options` block of
/// `aws_networkmanager_connect_attachment` (derived from provider schema).
@immutable
final class NetworkmanagerConnectAttachmentOptions {
  const NetworkmanagerConnectAttachmentOptions({this.protocol});

  final NetworkmanagerConnectAttachmentProtocol? protocol;

  @internal
  Map<String, Object?> encode() => {'protocol': ?protocol?.toTfJson()};
}

/// `protocol` — derived from the provider schema description.
extension type const NetworkmanagerConnectAttachmentProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkmanagerConnectAttachmentProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkmanagerConnectAttachmentProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkmanagerConnectAttachmentProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const gre = NetworkmanagerConnectAttachmentProtocol._(
    TfArgLiteral('GRE'),
  );
  static const noEncap = NetworkmanagerConnectAttachmentProtocol._(
    TfArgLiteral('NO_ENCAP'),
  );

  static const List<NetworkmanagerConnectAttachmentProtocol> values = [
    gre,
    noEncap,
  ];
}

/// Factory wrapper for `aws_networkmanager_connect_attachment`.
final class AwsNetworkmanagerConnectAttachment extends Resource {
  static const String tfType = 'aws_networkmanager_connect_attachment';

  AwsNetworkmanagerConnectAttachment(
    super.localName, {
    required TfArg<String> coreNetworkId,
    required TfArg<String> edgeLocation,
    TfArg<String>? routingPolicyLabel,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transportAttachmentId,
    required NetworkmanagerConnectAttachmentOptions options,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'core_network_id': coreNetworkId,
           'edge_location': edgeLocation,
           'routing_policy_label': ?routingPolicyLabel,
           'tags': ?tags,
           'transport_attachment_id': transportAttachmentId,
           'options': TfArg.literal(options.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerConnectAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerConnectAttachment>`.
  RefTo<AwsNetworkmanagerConnectAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attachment_id` attribute.
  TfRef<String> get attachmentId =>
      TfRef.attribute<String>(this, 'attachment_id');

  /// Reference to `attachment_policy_rule_number` attribute.
  TfRef<num> get attachmentPolicyRuleNumber =>
      TfRef.attribute<num>(this, 'attachment_policy_rule_number');

  /// Reference to `attachment_type` attribute.
  TfRef<String> get attachmentType =>
      TfRef.attribute<String>(this, 'attachment_type');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `segment_name` attribute.
  TfRef<String> get segmentName =>
      TfRef.attribute<String>(this, 'segment_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `core_network_id` attribute.
  TfRef<String> get coreNetworkId =>
      TfRef.attribute<String>(this, 'core_network_id');

  /// Reference to `edge_location` attribute.
  TfRef<String> get edgeLocation =>
      TfRef.attribute<String>(this, 'edge_location');

  /// Reference to `routing_policy_label` attribute.
  TfRef<String> get routingPolicyLabel =>
      TfRef.attribute<String>(this, 'routing_policy_label');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transport_attachment_id` attribute.
  TfRef<String> get transportAttachmentId =>
      TfRef.attribute<String>(this, 'transport_attachment_id');
}
