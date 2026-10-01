// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_trust`.
const Set<String> _awsDirectoryServiceTrustSensitive = <String>{};

/// Directory Service Trust Selective enum for `selective_auth`.
extension type const DirectoryServiceTrustSelectiveAuth._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceTrustSelectiveAuth.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceTrustSelectiveAuth.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceTrustSelectiveAuth.arg(TfArg<String> arg) : this._(arg);

  static const enabled = DirectoryServiceTrustSelectiveAuth._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = DirectoryServiceTrustSelectiveAuth._(
    TfArgLiteral('Disabled'),
  );

  static const List<DirectoryServiceTrustSelectiveAuth> values = [
    enabled,
    disabled,
  ];
}

/// Directory Service Trust enum for `trust_direction`.
extension type const DirectoryServiceTrustDirection._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceTrustDirection.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceTrustDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceTrustDirection.arg(TfArg<String> arg) : this._(arg);

  static const oneWayOutgoing = DirectoryServiceTrustDirection._(
    TfArgLiteral('One-Way: Outgoing'),
  );
  static const oneWayIncoming = DirectoryServiceTrustDirection._(
    TfArgLiteral('One-Way: Incoming'),
  );
  static const twoWay = DirectoryServiceTrustDirection._(
    TfArgLiteral('Two-Way'),
  );

  static const List<DirectoryServiceTrustDirection> values = [
    oneWayOutgoing,
    oneWayIncoming,
    twoWay,
  ];
}

/// Factory wrapper for `aws_directory_service_trust`.
final class AwsDirectoryServiceTrust extends Resource {
  static const String tfType = 'aws_directory_service_trust';

  AwsDirectoryServiceTrust(
    super.localName, {
    TfArg<List<String>>? conditionalForwarderIpAddrs,
    TfArg<bool>? deleteAssociatedConditionalForwarder,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    required TfArg<String> remoteDomainName,
    DirectoryServiceTrustSelectiveAuth? selectiveAuth,
    required DirectoryServiceTrustDirection trustDirection,
    required TfArg<String> trustPassword,
    TfArg<String>? trustType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'conditional_forwarder_ip_addrs': ?conditionalForwarderIpAddrs,
           'delete_associated_conditional_forwarder':
               ?deleteAssociatedConditionalForwarder,
           'directory_id': directoryId,
           'region': ?region,
           'remote_domain_name': remoteDomainName,
           'selective_auth': ?selectiveAuth,
           'trust_direction': trustDirection,
           'trust_password': trustPassword,
           'trust_type': ?trustType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceTrustSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceTrust>`.
  RefTo<AwsDirectoryServiceTrust> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_date_time` attribute.
  TfRef<String> get createdDateTime =>
      TfRef.attribute<String>(this, 'created_date_time');

  /// Reference to `last_updated_date_time` attribute.
  TfRef<String> get lastUpdatedDateTime =>
      TfRef.attribute<String>(this, 'last_updated_date_time');

  /// Reference to `state_last_updated_date_time` attribute.
  TfRef<String> get stateLastUpdatedDateTime =>
      TfRef.attribute<String>(this, 'state_last_updated_date_time');

  /// Reference to `trust_state` attribute.
  TfRef<String> get trustState => TfRef.attribute<String>(this, 'trust_state');

  /// Reference to `trust_state_reason` attribute.
  TfRef<String> get trustStateReason =>
      TfRef.attribute<String>(this, 'trust_state_reason');

  /// Reference to `conditional_forwarder_ip_addrs` attribute.
  TfRef<List<String>> get conditionalForwarderIpAddrs =>
      TfRef.attribute<List<String>>(this, 'conditional_forwarder_ip_addrs');

  /// Reference to `delete_associated_conditional_forwarder` attribute.
  TfRef<bool> get deleteAssociatedConditionalForwarder =>
      TfRef.attribute<bool>(this, 'delete_associated_conditional_forwarder');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `remote_domain_name` attribute.
  TfRef<String> get remoteDomainName =>
      TfRef.attribute<String>(this, 'remote_domain_name');

  /// Reference to `selective_auth` attribute.
  TfRef<String> get selectiveAuth =>
      TfRef.attribute<String>(this, 'selective_auth');

  /// Reference to `trust_direction` attribute.
  TfRef<String> get trustDirection =>
      TfRef.attribute<String>(this, 'trust_direction');

  /// Reference to `trust_password` attribute.
  TfRef<String> get trustPassword =>
      TfRef.attribute<String>(this, 'trust_password');

  /// Reference to `trust_type` attribute.
  TfRef<String> get trustType => TfRef.attribute<String>(this, 'trust_type');
}
