// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_kmsconfig`.
const Set<String> _googleNetappKmsconfigSensitive = <String>{};

/// Factory wrapper for `google_netapp_kmsconfig`.
///
/// NetApp Volumes always encrypts your data at rest using volume-specific keys.
///
/// A CMEK policy (customer-managed encryption key) warps such volume-specific
/// keys in a key stored in Cloud Key Management Service (KMS).
///
/// NetApp Volumes **CMEK** config (Cloud KMS key for volume encryption).
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU under `FC86-5113-7C81`
/// (list_skus keyword kms → 0). billing-behavior: KMS key-version charges
/// live under Cloud KMS, not NetApp — deferred with the never_apply pool
/// Wave (no apply-smoke quickstart).
final class GoogleNetappKmsconfig extends Resource {
  static const String tfType = 'google_netapp_kmsconfig';

  GoogleNetappKmsconfig({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> cryptoKeyName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'crypto_key_name': cryptoKeyName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappKmsconfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `instructions` attribute.
  TfRef<String> get instructions =>
      TfRef.attribute<String>(this, 'instructions');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account` attribute (SA that must hold the CMEK).
  TfRef<String> get serviceAccountRef =>
      TfRef.attribute<String>(this, 'service_account');
}
