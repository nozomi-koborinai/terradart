// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service`.
const Set<String> _awsServiceSensitive = <String>{};

/// Factory wrapper for `aws_service`.
final class DataAwsService extends Data {
  static const String tfType = 'aws_service';

  DataAwsService({
    required super.localName,
    TfArg<String>? dnsName,
    TfArg<String>? region,
    TfArg<String>? reverseDnsName,
    TfArg<String>? reverseDnsPrefix,
    TfArg<String>? serviceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dnsName != null) 'dns_name': dnsName,
           if (region != null) 'region': region,
           if (reverseDnsName != null) 'reverse_dns_name': reverseDnsName,
           if (reverseDnsPrefix != null) 'reverse_dns_prefix': reverseDnsPrefix,
           if (serviceId != null) 'service_id': serviceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `partition` attribute.
  TfRef<String> get partition => TfRef.attribute<String>(this, 'partition');

  /// Reference to `supported` attribute.
  TfRef<bool> get supported => TfRef.attribute<bool>(this, 'supported');
}
