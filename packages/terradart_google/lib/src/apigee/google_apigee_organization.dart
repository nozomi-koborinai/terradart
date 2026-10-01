// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_apigee_organization`.
const Set<String> _googleApigeeOrganizationSensitive = <String>{};

/// Apigee Organization Runtime enum for `runtime_type`.
enum ApigeeOrganizationRuntimeType implements TerraformEnum {
  cloud('CLOUD'),
  hybrid('HYBRID');

  const ApigeeOrganizationRuntimeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Soft-delete data retention for `google_apigee_organization.retention`
/// (query param on delete; not in MM `properties`, so not deriveEnums-backed).
enum ApigeeOrganizationRetention implements TerraformEnum {
  deletionRetentionUnspecified('DELETION_RETENTION_UNSPECIFIED'),
  minimum('MINIMUM');

  const ApigeeOrganizationRetention(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_apigee_organization` (derived from provider schema).
@immutable
final class ApigeeOrganizationProperties {
  const ApigeeOrganizationProperties({this.property});

  final List<ApigeeOrganizationProperty>? property;

  Map<String, Object?> encode() => {
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `properties.property` block of
/// `google_apigee_organization` (derived from provider schema).
@immutable
final class ApigeeOrganizationProperty {
  const ApigeeOrganizationProperty({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_organization`.
///
/// An `Organization` is the top-level container in Apigee.
///
/// Apigee **organization** — project-bound Apigee control plane
/// (subscription / evaluation org).
///
/// **Cost:** Cloud Billing Catalog service `1C2D-8C78-EC58` bills Apigee
/// PAYG environment and gateway usage once the org is active (e.g.
/// Gateway Node Hours SKU `0136-18C1-DD41` **$1.025/h**; Active
/// Intermediate Environment Usage Hours `421B-D6C0-52A2` **$2/h**;
/// Active Comprehensive Environment Usage Hours `01C8-CFFA-106E`
/// **$4.7/h**). Creating an organization is the gateway to that
/// billing surface. Too expensive for apply-smoke — factories ship
/// without a quickstart.
///
/// Requires [projectId]. Typically also set [analyticsRegion] and
/// [authorizedNetwork] (VPC peering). Enable `apigee.googleapis.com`
/// via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleApigeeOrganization(
///   'org',
///   projectId: TfArg.literal(projectId),
///   analyticsRegion: TfArg.literal('us-central1'),
///   authorizedNetwork: network.ref,
///   runtimeType: TfArg.literal(ApigeeOrganizationRuntimeType.cloud),
/// );
/// ```
final class GoogleApigeeOrganization extends Resource {
  static const String tfType = 'google_apigee_organization';

  GoogleApigeeOrganization(
    super.localName, {
    required TfArg<String> projectId,
    TfArg<String>? analyticsRegion,
    RefTo<GoogleComputeNetwork>? authorizedNetwork,
    TfArg<ApigeeOrganizationRuntimeType>? runtimeType,
    TfArg<String>? billingType,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? disableVpcPeering,
    TfArg<ApigeeOrganizationRetention>? retention,
    TfArg<String>? apiConsumerDataLocation,
    TfArg<String>? apiConsumerDataEncryptionKeyName,
    TfArg<String>? controlPlaneEncryptionKeyName,
    TfArg<String>? runtimeDatabaseEncryptionKeyName,
    ApigeeOrganizationProperties? properties,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project_id': projectId,
           'analytics_region': ?analyticsRegion,
           'authorized_network': ?authorizedNetwork?.encodeAs('id'),
           'runtime_type': ?runtimeType,
           'billing_type': ?billingType,
           'display_name': ?displayName,
           'description': ?description,
           'disable_vpc_peering': ?disableVpcPeering,
           'retention': ?retention,
           'api_consumer_data_location': ?apiConsumerDataLocation,
           'api_consumer_data_encryption_key_name':
               ?apiConsumerDataEncryptionKeyName,
           'control_plane_encryption_key_name': ?controlPlaneEncryptionKeyName,
           'runtime_database_encryption_key_name':
               ?runtimeDatabaseEncryptionKeyName,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeOrganization>`.
  RefTo<GoogleApigeeOrganization> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apigee_project_id` attribute.
  TfRef<String> get apigeeProjectId =>
      TfRef.attribute<String>(this, 'apigee_project_id');

  /// Reference to `ca_certificate` attribute.
  TfRef<String> get caCertificate =>
      TfRef.attribute<String>(this, 'ca_certificate');

  /// Reference to `subscription_type` attribute.
  TfRef<String> get subscriptionType =>
      TfRef.attribute<String>(this, 'subscription_type');

  /// Reference to `analytics_region` attribute.
  TfRef<String> get analyticsRegion =>
      TfRef.attribute<String>(this, 'analytics_region');

  /// Reference to `api_consumer_data_encryption_key_name` attribute.
  TfRef<String> get apiConsumerDataEncryptionKeyName =>
      TfRef.attribute<String>(this, 'api_consumer_data_encryption_key_name');

  /// Reference to `api_consumer_data_location` attribute.
  TfRef<String> get apiConsumerDataLocation =>
      TfRef.attribute<String>(this, 'api_consumer_data_location');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetwork =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `billing_type` attribute.
  TfRef<String> get billingType =>
      TfRef.attribute<String>(this, 'billing_type');

  /// Reference to `control_plane_encryption_key_name` attribute.
  TfRef<String> get controlPlaneEncryptionKeyName =>
      TfRef.attribute<String>(this, 'control_plane_encryption_key_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_vpc_peering` attribute.
  TfRef<bool> get disableVpcPeering =>
      TfRef.attribute<bool>(this, 'disable_vpc_peering');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `retention` attribute.
  TfRef<String> get retention => TfRef.attribute<String>(this, 'retention');

  /// Reference to `runtime_database_encryption_key_name` attribute.
  TfRef<String> get runtimeDatabaseEncryptionKeyName =>
      TfRef.attribute<String>(this, 'runtime_database_encryption_key_name');

  /// Reference to `runtime_type` attribute.
  TfRef<String> get runtimeTypeAttr =>
      TfRef.attribute<String>(this, 'runtime_type');
}
