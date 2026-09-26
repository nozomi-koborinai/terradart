// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudsearch_domain_service_access_policy`.
const Set<String> _awsCloudsearchDomainServiceAccessPolicySensitive =
    <String>{};

/// Factory wrapper for `aws_cloudsearch_domain_service_access_policy`.
final class AwsCloudsearchDomainServiceAccessPolicy extends Resource {
  static const String tfType = 'aws_cloudsearch_domain_service_access_policy';

  AwsCloudsearchDomainServiceAccessPolicy({
    required super.localName,
    required TfArg<String> accessPolicy,
    required TfArg<String> domainName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy': accessPolicy,
           'domain_name': domainName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudsearchDomainServiceAccessPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
