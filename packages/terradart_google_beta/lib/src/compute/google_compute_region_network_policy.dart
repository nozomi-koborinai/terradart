// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_policy`.
const Set<String> _googleComputeRegionNetworkPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_region_network_policy`.
final class GoogleComputeRegionNetworkPolicy extends Resource {
  static const String tfType = 'google_compute_region_network_policy';

  GoogleComputeRegionNetworkPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionNetworkPolicySensitive;
}
