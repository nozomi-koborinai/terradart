// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_container_service`.
const Set<String> _awsLightsailContainerServiceSensitive = <String>{};

/// Typed helper for the `private_registry_access` block of
/// `aws_lightsail_container_service` (derived from provider schema).
@immutable
final class LightsailContainerServicePrivateRegistryAccess {
  const LightsailContainerServicePrivateRegistryAccess({
    this.ecrImagePullerRole,
  });

  final LightsailContainerServicePrivateRegistryAccessEcrImagePullerRole?
  ecrImagePullerRole;

  Map<String, Object?> encode() => {
    if (ecrImagePullerRole != null)
      'ecr_image_puller_role': ecrImagePullerRole!.encode(),
  };
}

/// Typed helper for the `private_registry_access.ecr_image_puller_role` block of
/// `aws_lightsail_container_service` (derived from provider schema).
@immutable
final class LightsailContainerServicePrivateRegistryAccessEcrImagePullerRole {
  const LightsailContainerServicePrivateRegistryAccessEcrImagePullerRole({
    this.isActive,
  });

  final TfArg<bool>? isActive;

  Map<String, Object?> encode() => {
    if (isActive != null) 'is_active': isActive!.toTfJson(),
  };
}

/// Typed helper for the `public_domain_names` block of
/// `aws_lightsail_container_service` (derived from provider schema).
@immutable
final class LightsailContainerServicePublicDomainNames {
  const LightsailContainerServicePublicDomainNames({required this.certificate});

  final List<LightsailContainerServicePublicDomainNamesCertificate> certificate;

  Map<String, Object?> encode() => {
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `public_domain_names.certificate` block of
/// `aws_lightsail_container_service` (derived from provider schema).
@immutable
final class LightsailContainerServicePublicDomainNamesCertificate {
  const LightsailContainerServicePublicDomainNamesCertificate({
    required this.certificateName,
    required this.domainNames,
  });

  final TfArg<String> certificateName;

  final TfArg<List<Object?>> domainNames;

  Map<String, Object?> encode() => {
    'certificate_name': certificateName.toTfJson(),
    'domain_names': domainNames.toTfJson(),
  };
}

/// Factory wrapper for `aws_lightsail_container_service`.
final class AwsLightsailContainerService extends Resource {
  static const String tfType = 'aws_lightsail_container_service';

  AwsLightsailContainerService({
    required super.localName,
    TfArg<bool>? isDisabled,
    required TfArg<String> name,
    required TfArg<String> power,
    TfArg<String>? region,
    required TfArg<num> scale,
    TfArg<Map<String, String>>? tags,
    LightsailContainerServicePrivateRegistryAccess? privateRegistryAccess,
    LightsailContainerServicePublicDomainNames? publicDomainNames,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (isDisabled != null) 'is_disabled': isDisabled,
           'name': name,
           'power': power,
           if (region != null) 'region': region,
           'scale': scale,
           if (tags != null) 'tags': tags,
           if (privateRegistryAccess != null)
             'private_registry_access': TfArg.literal(
               privateRegistryAccess.encode(),
             ),
           if (publicDomainNames != null)
             'public_domain_names': TfArg.literal(publicDomainNames.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailContainerServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `power_id` attribute.
  TfRef<String> get powerId => TfRef.attribute<String>(this, 'power_id');

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArn =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `private_domain_name` attribute.
  TfRef<String> get privateDomainName =>
      TfRef.attribute<String>(this, 'private_domain_name');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
