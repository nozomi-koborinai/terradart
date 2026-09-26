// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_trust`.
const Set<String> _awsDirectoryServiceTrustSensitive = <String>{};

/// Factory wrapper for `aws_directory_service_trust`.
final class AwsDirectoryServiceTrust extends Resource {
  static const String tfType = 'aws_directory_service_trust';

  AwsDirectoryServiceTrust({
    required super.localName,
    TfArg<List<String>>? conditionalForwarderIpAddrs,
    TfArg<bool>? deleteAssociatedConditionalForwarder,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    required TfArg<String> remoteDomainName,
    TfArg<String>? selectiveAuth,
    required TfArg<String> trustDirection,
    required TfArg<String> trustPassword,
    TfArg<String>? trustType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (conditionalForwarderIpAddrs != null)
             'conditional_forwarder_ip_addrs': conditionalForwarderIpAddrs,
           if (deleteAssociatedConditionalForwarder != null)
             'delete_associated_conditional_forwarder':
                 deleteAssociatedConditionalForwarder,
           'directory_id': directoryId,
           if (region != null) 'region': region,
           'remote_domain_name': remoteDomainName,
           if (selectiveAuth != null) 'selective_auth': selectiveAuth,
           'trust_direction': trustDirection,
           'trust_password': trustPassword,
           if (trustType != null) 'trust_type': trustType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceTrustSensitive;

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
}
