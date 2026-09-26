// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_dns_namespace`.
const Set<String> _awsServiceDiscoveryDnsNamespaceSensitive = <String>{};

/// Factory wrapper for `aws_service_discovery_dns_namespace`.
final class DataAwsServiceDiscoveryDnsNamespace extends Data {
  static const String tfType = 'aws_service_discovery_dns_namespace';

  DataAwsServiceDiscoveryDnsNamespace({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceDiscoveryDnsNamespaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `hosted_zone` attribute.
  TfRef<String> get hostedZone => TfRef.attribute<String>(this, 'hosted_zone');
}
