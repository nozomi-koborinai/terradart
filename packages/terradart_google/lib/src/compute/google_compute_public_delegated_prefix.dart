// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_public_advertised_prefix.dart'
    show GoogleComputePublicAdvertisedPrefix;

/// Sensitive field paths for `google_compute_public_delegated_prefix`.
const Set<String> _googleComputePublicDelegatedPrefixSensitive = <String>{};

/// Compute Public Delegated Prefix Ipv6 Access enum for `ipv6_access_type`.
extension type const ComputePublicDelegatedPrefixIpv6AccessType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputePublicDelegatedPrefixIpv6AccessType.variable(String name)
    : this._(TfArg.variable(name));
  ComputePublicDelegatedPrefixIpv6AccessType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputePublicDelegatedPrefixIpv6AccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const external = ComputePublicDelegatedPrefixIpv6AccessType._(
    TfArgLiteral('EXTERNAL'),
  );
  static const internal = ComputePublicDelegatedPrefixIpv6AccessType._(
    TfArgLiteral('INTERNAL'),
  );

  static const List<ComputePublicDelegatedPrefixIpv6AccessType> values = [
    external,
    internal,
  ];
}

/// Compute Public Delegated Prefix enum for `mode`.
extension type const ComputePublicDelegatedPrefixMode._(TfArg<String> _)
    implements TfArg<String> {
  ComputePublicDelegatedPrefixMode.variable(String name)
    : this._(TfArg.variable(name));
  ComputePublicDelegatedPrefixMode.expression(String template)
    : this._(TfArg.expression(template));
  const ComputePublicDelegatedPrefixMode.arg(TfArg<String> arg) : this._(arg);

  static const delegation = ComputePublicDelegatedPrefixMode._(
    TfArgLiteral('DELEGATION'),
  );
  static const externalIpv6ForwardingRuleCreation =
      ComputePublicDelegatedPrefixMode._(
        TfArgLiteral('EXTERNAL_IPV6_FORWARDING_RULE_CREATION'),
      );
  static const externalIpv6SubnetworkCreation =
      ComputePublicDelegatedPrefixMode._(
        TfArgLiteral('EXTERNAL_IPV6_SUBNETWORK_CREATION'),
      );
  static const internalIpv6SubnetworkCreation =
      ComputePublicDelegatedPrefixMode._(
        TfArgLiteral('INTERNAL_IPV6_SUBNETWORK_CREATION'),
      );

  static const List<ComputePublicDelegatedPrefixMode> values = [
    delegation,
    externalIpv6ForwardingRuleCreation,
    externalIpv6SubnetworkCreation,
    internalIpv6SubnetworkCreation,
  ];
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

  GoogleComputePublicDelegatedPrefix(
    super.localName, {
    TfArg<num>? allocatablePrefixLength,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> ipCidrRange,
    TfArg<bool>? isLiveMigration,
    ComputePublicDelegatedPrefixMode? mode,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<num> get allocatablePrefixLength =>
      TfRef.attribute<num>(this, 'allocatable_prefix_length');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `is_live_migration` attribute.
  TfRef<bool> get isLiveMigration =>
      TfRef.attribute<bool>(this, 'is_live_migration');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `parent_prefix` attribute.
  TfRef<String> get parentPrefix =>
      TfRef.attribute<String>(this, 'parent_prefix');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
