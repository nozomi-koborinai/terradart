// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_distribution_tenant`.
const Set<String> _awsCloudfrontDistributionTenantSensitive = <String>{};

/// Typed helper for the `customizations` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantCustomizations {
  const CloudfrontDistributionTenantCustomizations({
    this.certificate,
    this.geoRestriction,
    this.webAcl,
  });

  final List<CloudfrontDistributionTenantCustomizationsCertificate>?
  certificate;

  final List<CloudfrontDistributionTenantCustomizationsGeoRestriction>?
  geoRestriction;

  final List<CloudfrontDistributionTenantCustomizationsWebAcl>? webAcl;

  Map<String, Object?> encode() => {
    if (certificate != null)
      'certificate': [for (final e in certificate!) e.encode()],
    if (geoRestriction != null)
      'geo_restriction': [for (final e in geoRestriction!) e.encode()],
    if (webAcl != null) 'web_acl': [for (final e in webAcl!) e.encode()],
  };
}

/// Typed helper for the `customizations.certificate` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantCustomizationsCertificate {
  const CloudfrontDistributionTenantCustomizationsCertificate({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {'arn': ?arn?.toTfJson()};
}

/// Typed helper for the `customizations.geo_restriction` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantCustomizationsGeoRestriction {
  const CloudfrontDistributionTenantCustomizationsGeoRestriction({
    this.locations,
    this.restrictionType,
  });

  final TfArg<List<String>>? locations;

  final TfArg<
    CloudfrontDistributionTenantCustomizationsGeoRestrictionRestrictionType
  >?
  restrictionType;

  Map<String, Object?> encode() => {
    'locations': ?locations?.toTfJson(),
    'restriction_type': ?restrictionType?.toTfJson(),
  };
}

/// `restriction_type` — derived from the provider schema description.
enum CloudfrontDistributionTenantCustomizationsGeoRestrictionRestrictionType
    implements TerraformEnum {
  blacklist('blacklist'),
  whitelist('whitelist'),
  none('none');

  const CloudfrontDistributionTenantCustomizationsGeoRestrictionRestrictionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `customizations.web_acl` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantCustomizationsWebAcl {
  const CloudfrontDistributionTenantCustomizationsWebAcl({
    this.action,
    this.arn,
  });

  final TfArg<CloudfrontDistributionTenantCustomizationsWebAclAction>? action;

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'arn': ?arn?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum CloudfrontDistributionTenantCustomizationsWebAclAction
    implements TerraformEnum {
  overrideCase('override'),
  disable('disable');

  const CloudfrontDistributionTenantCustomizationsWebAclAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `domain` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantDomain {
  const CloudfrontDistributionTenantDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `managed_certificate_request` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantManagedCertificateRequest {
  const CloudfrontDistributionTenantManagedCertificateRequest({
    this.certificateTransparencyLoggingPreference,
    this.primaryDomainName,
    this.validationTokenHost,
  });

  final TfArg<
    CloudfrontDistributionTenantManagedCertificateRequestCertificateTransparencyLoggingPreference
  >?
  certificateTransparencyLoggingPreference;

  final TfArg<String>? primaryDomainName;

  final TfArg<
    CloudfrontDistributionTenantManagedCertificateRequestValidationTokenHost
  >?
  validationTokenHost;

  Map<String, Object?> encode() => {
    'certificate_transparency_logging_preference':
        ?certificateTransparencyLoggingPreference?.toTfJson(),
    'primary_domain_name': ?primaryDomainName?.toTfJson(),
    'validation_token_host': ?validationTokenHost?.toTfJson(),
  };
}

/// `certificate_transparency_logging_preference` — derived from the provider schema description.
enum CloudfrontDistributionTenantManagedCertificateRequestCertificateTransparencyLoggingPreference
    implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const CloudfrontDistributionTenantManagedCertificateRequestCertificateTransparencyLoggingPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `validation_token_host` — derived from the provider schema description.
enum CloudfrontDistributionTenantManagedCertificateRequestValidationTokenHost
    implements TerraformEnum {
  cloudfront('cloudfront'),
  selfHosted('self-hosted');

  const CloudfrontDistributionTenantManagedCertificateRequestValidationTokenHost(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `parameter` block of
/// `aws_cloudfront_distribution_tenant` (derived from provider schema).
@immutable
final class CloudfrontDistributionTenantParameter {
  const CloudfrontDistributionTenantParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_distribution_tenant`.
final class AwsCloudfrontDistributionTenant extends Resource {
  static const String tfType = 'aws_cloudfront_distribution_tenant';

  AwsCloudfrontDistributionTenant({
    required super.localName,
    TfArg<String>? connectionGroupId,
    required TfArg<String> distributionId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? waitForDeployment,
    List<CloudfrontDistributionTenantCustomizations>? customizations,
    List<CloudfrontDistributionTenantDomain>? domain,
    List<CloudfrontDistributionTenantManagedCertificateRequest>?
    managedCertificateRequest,
    List<CloudfrontDistributionTenantParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_group_id': ?connectionGroupId,
           'distribution_id': distributionId,
           'enabled': ?enabled,
           'name': name,
           'tags': ?tags,
           'wait_for_deployment': ?waitForDeployment,
           if (customizations != null)
             'customizations': TfArg.literal([
               for (final e in customizations) e.encode(),
             ]),
           if (domain != null)
             'domain': TfArg.literal([for (final e in domain) e.encode()]),
           if (managedCertificateRequest != null)
             'managed_certificate_request': TfArg.literal([
               for (final e in managedCertificateRequest) e.encode(),
             ]),
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontDistributionTenantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontDistributionTenant>`.
  RefTo<AwsCloudfrontDistributionTenant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
