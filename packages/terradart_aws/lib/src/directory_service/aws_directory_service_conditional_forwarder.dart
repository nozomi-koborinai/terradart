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

  AwsDirectoryServiceConditionalForwarder({
    required super.localName,
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
           if (region != null) 'region': region,
           'remote_domain_name': remoteDomainName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceConditionalForwarderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
