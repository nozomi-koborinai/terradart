// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_project_default_network_tier`.
const Set<String> _googleComputeProjectDefaultNetworkTierSensitive = <String>{};

/// Default network service tier for new external IPs in the project.
/// `PREMIUM` uses Google's global backbone; `STANDARD` is regional/ISP.
enum ComputeProjectDefaultNetworkTier implements TerraformEnum {
  premium('PREMIUM'),
  standard('STANDARD');

  const ComputeProjectDefaultNetworkTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_project_default_network_tier`.
///
/// Project-level **Compute Engine default network tier** — a singleton
/// that sets `PREMIUM` or `STANDARD` as the default for new external IP
/// addresses in the project.
///
/// This resource is free project metadata. Prefer
/// [ComputeProjectDefaultNetworkTier.standard] in smoke stacks when you
/// want the cheaper regional default; `PREMIUM` is Google's usual
/// project default.
///
/// Enable `compute.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleComputeProjectDefaultNetworkTier(
///   localName: 'defaults',
///   networkTier: TfArg.literal(
///     ComputeProjectDefaultNetworkTier.standard,
///   ),
/// );
/// ```
final class GoogleComputeProjectDefaultNetworkTier extends Resource {
  static const String tfType = 'google_compute_project_default_network_tier';

  GoogleComputeProjectDefaultNetworkTier({
    required super.localName,
    required TfArg<ComputeProjectDefaultNetworkTier> networkTier,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_tier': networkTier,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeProjectDefaultNetworkTierSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
