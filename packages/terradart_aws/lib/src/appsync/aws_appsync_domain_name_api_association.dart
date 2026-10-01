// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_domain_name_api_association`.
const Set<String> _awsAppsyncDomainNameApiAssociationSensitive = <String>{};

/// Factory wrapper for `aws_appsync_domain_name_api_association`.
final class AwsAppsyncDomainNameApiAssociation extends Resource {
  static const String tfType = 'aws_appsync_domain_name_api_association';

  AwsAppsyncDomainNameApiAssociation(
    super.localName, {
    required TfArg<String> apiId,
    required TfArg<String> domainName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'domain_name': domainName,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppsyncDomainNameApiAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncDomainNameApiAssociation>`.
  RefTo<AwsAppsyncDomainNameApiAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
