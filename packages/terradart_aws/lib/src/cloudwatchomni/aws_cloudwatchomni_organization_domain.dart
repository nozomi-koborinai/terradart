// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_organization_domain`.
const Set<String> _awsCloudwatchomniOrganizationDomainSensitive = <String>{};

/// Cloudwatchomni Organization Domain Identity enum for `identity_providers`.
extension type const CloudwatchomniOrganizationDomainIdentityProviders._(
  TfArg<String> _
)
    implements TfArg<String> {
  CloudwatchomniOrganizationDomainIdentityProviders.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniOrganizationDomainIdentityProviders.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniOrganizationDomainIdentityProviders.arg(TfArg<String> arg)
    : this._(arg);

  static const iam = CloudwatchomniOrganizationDomainIdentityProviders._(
    TfArgLiteral('IAM'),
  );
  static const idc = CloudwatchomniOrganizationDomainIdentityProviders._(
    TfArgLiteral('IDC'),
  );

  static const List<CloudwatchomniOrganizationDomainIdentityProviders> values =
      [iam, idc];
}

/// Typed helper for the `identity_provider_configuration` block of
/// `aws_cloudwatchomni_organization_domain` (derived from provider schema).
@immutable
final class CloudwatchomniOrganizationDomainIdentityProviderConfiguration {
  const CloudwatchomniOrganizationDomainIdentityProviderConfiguration({
    this.identityCenterConfiguration,
  });

  final List<CloudwatchomniOrganizationDomainIdentityCenterConfiguration>?
  identityCenterConfiguration;

  @internal
  Map<String, Object?> encode() => {
    if (identityCenterConfiguration != null)
      'identity_center_configuration': [
        for (final e in identityCenterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `identity_provider_configuration.identity_center_configuration` block of
/// `aws_cloudwatchomni_organization_domain` (derived from provider schema).
@immutable
final class CloudwatchomniOrganizationDomainIdentityCenterConfiguration {
  const CloudwatchomniOrganizationDomainIdentityCenterConfiguration({
    required this.identityCenterInstanceArn,
  });

  final TfArg<String> identityCenterInstanceArn;

  @internal
  Map<String, Object?> encode() => {
    'identity_center_instance_arn': identityCenterInstanceArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatchomni_organization_domain`.
final class AwsCloudwatchomniOrganizationDomain extends Resource {
  static const String tfType = 'aws_cloudwatchomni_organization_domain';

  AwsCloudwatchomniOrganizationDomain(
    super.localName, {
    required TfArg<String> domainAccessRoleArn,
    required EnumList<CloudwatchomniOrganizationDomainIdentityProviders>
    identityProviders,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchomniOrganizationDomainIdentityProviderConfiguration>?
    identityProviderConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_access_role_arn': domainAccessRoleArn,
           'identity_providers': identityProviders,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (identityProviderConfiguration != null)
             'identity_provider_configuration': TfArg.literal([
               for (final e in identityProviderConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchomniOrganizationDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniOrganizationDomain>`.
  RefTo<AwsCloudwatchomniOrganizationDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `custom_endpoint_urls` attribute.
  TfRef<List<String>> get customEndpointUrls =>
      TfRef.attribute<List<String>>(this, 'custom_endpoint_urls');

  /// Reference to `domain_endpoint_url` attribute.
  TfRef<String> get domainEndpointUrl =>
      TfRef.attribute<String>(this, 'domain_endpoint_url');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `identity_center_application_arn` attribute.
  TfRef<String> get identityCenterApplicationArn =>
      TfRef.attribute<String>(this, 'identity_center_application_arn');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `domain_access_role_arn` attribute.
  TfRef<String> get domainAccessRoleArn =>
      TfRef.attribute<String>(this, 'domain_access_role_arn');

  /// Reference to `identity_providers` attribute.
  TfRef<List<String>> get identityProviders =>
      TfRef.attribute<List<String>>(this, 'identity_providers');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
