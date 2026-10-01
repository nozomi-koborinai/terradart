// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_conditional_forwarder`.
const Set<String> _awsDirectoryServiceConditionalForwarderSensitive =
    <String>{};

/// Factory wrapper for `aws_directory_service_conditional_forwarder`.
final class AwsDirectoryServiceConditionalForwarder extends Resource {
  static const String tfType = 'aws_directory_service_conditional_forwarder';

  AwsDirectoryServiceConditionalForwarder(
    super.localName, {
    required TfArg<String> directoryId,
    required TfArg<List<String>> dnsIps,
    TfArg<String>? region,
    required TfArg<String> remoteDomainName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'dns_ips': dnsIps,
           'region': ?region,
           'remote_domain_name': remoteDomainName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceConditionalForwarderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceConditionalForwarder>`.
  RefTo<AwsDirectoryServiceConditionalForwarder> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `dns_ips` attribute.
  TfRef<List<String>> get dnsIps =>
      TfRef.attribute<List<String>>(this, 'dns_ips');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `remote_domain_name` attribute.
  TfRef<String> get remoteDomainName =>
      TfRef.attribute<String>(this, 'remote_domain_name');
}
