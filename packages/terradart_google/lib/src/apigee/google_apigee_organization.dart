// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

/// Typed helper for the `properties` block of
/// `google_apigee_organization` (derived from provider schema).
@immutable
final class ApigeeOrganizationProperties {
  const ApigeeOrganizationProperties({this.property});

  final List<ApigeeOrganizationPropertiesProperty>? property;

  Map<String, Object?> encode() => {
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `properties.property` block of
/// `google_apigee_organization` (derived from provider schema).
@immutable
final class ApigeeOrganizationPropertiesProperty {
  const ApigeeOrganizationPropertiesProperty({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
///   localName: 'org',
///   projectId: TfArg.literal(projectId),
///   analyticsRegion: TfArg.literal('us-central1'),
///   authorizedNetwork: TfArg.ref(network.id),
///   runtimeType: TfArg.literal('CLOUD'),
/// );
/// ```
final class GoogleApigeeOrganization extends Resource {
  static const String tfType = 'google_apigee_organization';

  GoogleApigeeOrganization({
    required super.localName,
    required TfArg<String> projectId,
    TfArg<String>? analyticsRegion,
    TfArg<String>? authorizedNetwork,
    TfArg<String>? runtimeType,
    TfArg<String>? billingType,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? disableVpcPeering,
    TfArg<String>? retention,
    TfArg<String>? apiConsumerDataLocation,
    TfArg<String>? apiConsumerDataEncryptionKeyName,
    TfArg<String>? controlPlaneEncryptionKeyName,
    TfArg<String>? runtimeDatabaseEncryptionKeyName,
    ApigeeOrganizationProperties? properties,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project_id': projectId,
           if (analyticsRegion != null) 'analytics_region': analyticsRegion,
           if (authorizedNetwork != null)
             'authorized_network': authorizedNetwork,
           if (runtimeType != null) 'runtime_type': runtimeType,
           if (billingType != null) 'billing_type': billingType,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (disableVpcPeering != null)
             'disable_vpc_peering': disableVpcPeering,
           if (retention != null) 'retention': retention,
           if (apiConsumerDataLocation != null)
             'api_consumer_data_location': apiConsumerDataLocation,
           if (apiConsumerDataEncryptionKeyName != null)
             'api_consumer_data_encryption_key_name':
                 apiConsumerDataEncryptionKeyName,
           if (controlPlaneEncryptionKeyName != null)
             'control_plane_encryption_key_name': controlPlaneEncryptionKeyName,
           if (runtimeDatabaseEncryptionKeyName != null)
             'runtime_database_encryption_key_name':
                 runtimeDatabaseEncryptionKeyName,
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeOrganizationSensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
