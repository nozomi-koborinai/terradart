// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_edge_cache_keyset`.
const Set<String> _googleNetworkServicesEdgeCacheKeysetSensitive = <String>{
  'public_key.value',
};

/// Typed helper for the `public_key` block of
/// `google_network_services_edge_cache_keyset` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheKeysetPublicKey {
  const NetworkServicesEdgeCacheKeysetPublicKey({
    required this.id,
    this.managed,
    this.value,
  });

  final TfArg<String> id;

  final TfArg<bool>? managed;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (managed != null) 'managed': managed!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `validation_shared_keys` block of
/// `google_network_services_edge_cache_keyset` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheKeysetValidationSharedKeys {
  const NetworkServicesEdgeCacheKeysetValidationSharedKeys({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Factory wrapper for `google_network_services_edge_cache_keyset`.
///
/// EdgeCacheKeyset represents a collection of public keys used for validating
/// signed requests.
///
/// Media CDN **Edge Cache keyset** — public / shared keys for signed
/// requests on an Edge Cache service.
///
/// **Cost / apply:** gcp-cost: Networking `E505-1604-58F8` Media CDN Capacity
/// Reservation per Tbps North America SKU `7393-8C37-77E1` **$20,000/mo**
/// (plus Edge Cache Data Transfer North America `E2B8-D4FA-6E05`
/// **$0.02/GiBy**). billing-behavior: keysets are part of the Media CDN Edge
/// Cache data plane; working stacks can accrue high egress and this product
/// family includes existence-billed Tbps capacity reservations. **Never**
/// wire into apply-smoke.
///
/// Enable `networkservices.googleapis.com` before apply.
final class GoogleNetworkServicesEdgeCacheKeyset extends Resource {
  static const String tfType = 'google_network_services_edge_cache_keyset';

  GoogleNetworkServicesEdgeCacheKeyset({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    List<NetworkServicesEdgeCacheKeysetPublicKey>? publicKey,
    List<NetworkServicesEdgeCacheKeysetValidationSharedKeys>?
    validationSharedKeys,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (publicKey != null)
             'public_key': TfArg.literal([
               for (final e in publicKey) e.encode(),
             ]),
           if (validationSharedKeys != null)
             'validation_shared_keys': TfArg.literal([
               for (final e in validationSharedKeys) e.encode(),
             ]),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesEdgeCacheKeysetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
