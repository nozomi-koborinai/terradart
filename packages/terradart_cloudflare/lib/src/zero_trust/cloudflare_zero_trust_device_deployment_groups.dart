// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_deployment_groups`.
const Set<String> _cloudflareZeroTrustDeviceDeploymentGroupsSensitive =
    <String>{};

/// Typed helper for the `version_config` block of
/// `cloudflare_zero_trust_device_deployment_groups` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDeploymentGroupsVersionConfig {
  const ZeroTrustDeviceDeploymentGroupsVersionConfig({
    required this.targetEnvironment,
    required this.version,
  });

  final TfArg<String> targetEnvironment;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'target_environment': targetEnvironment.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_deployment_groups`.
final class CloudflareZeroTrustDeviceDeploymentGroups extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_deployment_groups';

  CloudflareZeroTrustDeviceDeploymentGroups({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    TfArg<List<String>>? policyIds,
    required List<ZeroTrustDeviceDeploymentGroupsVersionConfig> versionConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           if (policyIds != null) 'policy_ids': policyIds,
           'version_config': TfArg.literal([
             for (final e in versionConfig) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDeploymentGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
