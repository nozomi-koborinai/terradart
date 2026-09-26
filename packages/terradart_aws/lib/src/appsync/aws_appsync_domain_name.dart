// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_domain_name`.
const Set<String> _awsAppsyncDomainNameSensitive = <String>{};

/// Factory wrapper for `aws_appsync_domain_name`.
final class AwsAppsyncDomainName extends Resource {
  static const String tfType = 'aws_appsync_domain_name';

  AwsAppsyncDomainName({
    required super.localName,
    required TfArg<String> certificateArn,
    TfArg<String>? description,
    required TfArg<String> domainName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': certificateArn,
           if (description != null) 'description': description,
           'domain_name': domainName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncDomainNameSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `appsync_domain_name` attribute.
  TfRef<String> get appsyncDomainName =>
      TfRef.attribute<String>(this, 'appsync_domain_name');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');
}
