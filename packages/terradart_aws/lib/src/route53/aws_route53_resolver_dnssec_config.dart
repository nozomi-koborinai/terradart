// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_dnssec_config`.
const Set<String> _awsRoute53ResolverDnssecConfigSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_dnssec_config`.
final class AwsRoute53ResolverDnssecConfig extends Resource {
  static const String tfType = 'aws_route53_resolver_dnssec_config';

  AwsRoute53ResolverDnssecConfig({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverDnssecConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `validation_status` attribute.
  TfRef<String> get validationStatus =>
      TfRef.attribute<String>(this, 'validation_status');
}
