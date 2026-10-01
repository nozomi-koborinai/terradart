// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_public_advertised_prefix.dart'
    show GoogleComputePublicAdvertisedPrefix;

/// Sensitive field paths for `google_compute_public_delegated_prefix`.
const Set<String> _googleComputePublicDelegatedPrefixSensitive = <String>{};

/// Compute Public Delegated Prefix Ipv6 Access enum for `ipv6_access_type`.
enum ComputePublicDelegatedPrefixIpv6AccessType implements TerraformEnum {
  external('EXTERNAL'),
  internal('INTERNAL');

  const ComputePublicDelegatedPrefixIpv6AccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Public Delegated Prefix enum for `mode`.
enum ComputePublicDelegatedPrefixMode implements TerraformEnum {
  delegation('DELEGATION'),
  externalIpv6ForwardingRuleCreation('EXTERNAL_IPV6_FORWARDING_RULE_CREATION'),
  externalIpv6SubnetworkCreation('EXTERNAL_IPV6_SUBNETWORK_CREATION'),
  internalIpv6SubnetworkCreation('INTERNAL_IPV6_SUBNETWORK_CREATION');

  const ComputePublicDelegatedPrefixMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_public_delegated_prefix`.
///
/// Represents a PublicDelegatedPrefix for use with bring your own IP addresses
/// (BYOIP).
///
/// BYOIP public delegated prefix — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputePublicDelegatedPrefix extends Resource {
  static const String tfType = 'google_compute_public_delegated_prefix';

  GoogleComputePublicDelegatedPrefix({
    required super.localName,
    TfArg<num>? allocatablePrefixLength,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> ipCidrRange,
    TfArg<bool>? isLiveMigration,
    TfArg<ComputePublicDelegatedPrefixMode>? mode,
    required TfArg<String> name,
    required RefTo<GoogleComputePublicAdvertisedPrefix> parentPrefix,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocatable_prefix_length': ?allocatablePrefixLength,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'ip_cidr_range': ipCidrRange,
           'is_live_migration': ?isLiveMigration,
           'mode': ?mode,
           'name': name,
           'parent_prefix': parentPrefix.encodeAs('id'),
           'project': ?project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputePublicDelegatedPrefixSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputePublicDelegatedPrefix>`.
  RefTo<GoogleComputePublicDelegatedPrefix> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enable_enhanced_ipv4_allocation` attribute.
  TfRef<bool> get enableEnhancedIpv4Allocation =>
      TfRef.attribute<bool>(this, 'enable_enhanced_ipv4_allocation');

  /// Reference to `ipv6_access_type` attribute.
  TfRef<String> get ipv6AccessType =>
      TfRef.attribute<String>(this, 'ipv6_access_type');

  /// Reference to `public_delegated_sub_prefixs` attribute.
  TfRef<List<Map<String, Object?>>> get publicDelegatedSubPrefixs =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'public_delegated_sub_prefixs',
      );

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `allocatable_prefix_length` attribute.
  TfRef<num> get allocatablePrefixLengthRef =>
      TfRef.attribute<num>(this, 'allocatable_prefix_length');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRangeRef =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `is_live_migration` attribute.
  TfRef<bool> get isLiveMigrationRef =>
      TfRef.attribute<bool>(this, 'is_live_migration');

  /// Reference to `mode` attribute.
  TfRef<String> get modeRef => TfRef.attribute<String>(this, 'mode');

  /// Reference to `parent_prefix` attribute.
  TfRef<String> get parentPrefixRef =>
      TfRef.attribute<String>(this, 'parent_prefix');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
