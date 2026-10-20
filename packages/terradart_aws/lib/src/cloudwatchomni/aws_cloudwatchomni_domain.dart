// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_domain`.
const Set<String> _awsCloudwatchomniDomainSensitive = <String>{};

/// Cloudwatchomni Domain Identity enum for `identity_providers`.
extension type const CloudwatchomniDomainIdentityProviders._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniDomainIdentityProviders.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniDomainIdentityProviders.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniDomainIdentityProviders.arg(TfArg<String> arg)
    : this._(arg);

  static const iam = CloudwatchomniDomainIdentityProviders._(
    TfArgLiteral('IAM'),
  );
  static const idc = CloudwatchomniDomainIdentityProviders._(
    TfArgLiteral('IDC'),
  );

  static const List<CloudwatchomniDomainIdentityProviders> values = [iam, idc];
}

/// Typed helper for the `identity_provider_configuration` block of
/// `aws_cloudwatchomni_domain` (derived from provider schema).
@immutable
final class CloudwatchomniDomainIdentityProviderConfiguration {
  const CloudwatchomniDomainIdentityProviderConfiguration({
    this.identityCenterConfiguration,
  });

  final List<CloudwatchomniDomainIdentityCenterConfiguration>?
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
/// `aws_cloudwatchomni_domain` (derived from provider schema).
@immutable
final class CloudwatchomniDomainIdentityCenterConfiguration {
  const CloudwatchomniDomainIdentityCenterConfiguration({
    required this.identityCenterInstanceArn,
  });

  final TfArg<String> identityCenterInstanceArn;

  @internal
  Map<String, Object?> encode() => {
    'identity_center_instance_arn': identityCenterInstanceArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatchomni_domain`.
final class AwsCloudwatchomniDomain extends Resource {
  static const String tfType = 'aws_cloudwatchomni_domain';

  AwsCloudwatchomniDomain(
    super.localName, {
    required List<CloudwatchomniDomainIdentityProviders> identityProviders,
    required TfArg<String> name,
    TfArg<String>? region,
    List<CloudwatchomniDomainIdentityProviderConfiguration>?
    identityProviderConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_providers': TfArg.literal([
             for (final e in identityProviders) e.toTfJson(),
           ]),
           'name': name,
           'region': ?region,
           if (identityProviderConfiguration != null)
             'identity_provider_configuration': TfArg.literal([
               for (final e in identityProviderConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniDomain>`.
  RefTo<AwsCloudwatchomniDomain> get ref => RefTo.of(this);

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

  /// Reference to `identity_providers` attribute.
  TfRef<List<String>> get identityProviders =>
      TfRef.attribute<List<String>>(this, 'identity_providers');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
