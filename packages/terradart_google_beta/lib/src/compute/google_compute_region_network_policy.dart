// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_policy`.
const Set<String> _googleComputeRegionNetworkPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_region_network_policy`.
///
/// The Compute NetworkFirewallPolicy resource
final class GoogleComputeRegionNetworkPolicy extends Resource {
  static const String tfType = 'google_compute_region_network_policy';

  GoogleComputeRegionNetworkPolicy(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': name,
           'project': ?project,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionNetworkPolicySensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionNetworkPolicy>`.
  RefTo<GoogleComputeRegionNetworkPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `region_network_policy_id` attribute.
  TfRef<String> get regionNetworkPolicyId =>
      TfRef.attribute<String>(this, 'region_network_policy_id');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
