// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_public_delegated_prefix`.
const Set<String> _googleComputePublicDelegatedPrefixSensitive = <String>{};

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
    TfArg<String>? mode,
    required TfArg<String> name,
    required TfArg<String> parentPrefix,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allocatablePrefixLength != null)
             'allocatable_prefix_length': allocatablePrefixLength,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'ip_cidr_range': ipCidrRange,
           if (isLiveMigration != null) 'is_live_migration': isLiveMigration,
           if (mode != null) 'mode': mode,
           'name': name,
           'parent_prefix': parentPrefix,
           if (project != null) 'project': project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputePublicDelegatedPrefixSensitive;

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
}
