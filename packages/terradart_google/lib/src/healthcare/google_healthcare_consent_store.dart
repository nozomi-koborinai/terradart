// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dataset.dart'
    show GoogleHealthcareDataset;

/// Sensitive field paths for `google_healthcare_consent_store`.
const Set<String> _googleHealthcareConsentStoreSensitive = <String>{};

/// Factory wrapper for `google_healthcare_consent_store`.
///
/// The Consent Management API is a tool for tracking user consents and the
/// documentation associated with the consents.
final class GoogleHealthcareConsentStore extends Resource {
  static const String tfType = 'google_healthcare_consent_store';

  GoogleHealthcareConsentStore(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleHealthcareDataset> dataset,
    TfArg<String>? defaultConsentTtl,
    TfArg<bool>? enableConsentCreateOnUpdate,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset.encodeAs('self_link'),
           'default_consent_ttl': ?defaultConsentTtl,
           'enable_consent_create_on_update': ?enableConsentCreateOnUpdate,
           'labels': ?labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareConsentStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareConsentStore>`.
  RefTo<GoogleHealthcareConsentStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `default_consent_ttl` attribute.
  TfRef<String> get defaultConsentTtl =>
      TfRef.attribute<String>(this, 'default_consent_ttl');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enable_consent_create_on_update` attribute.
  TfRef<bool> get enableConsentCreateOnUpdate =>
      TfRef.attribute<bool>(this, 'enable_consent_create_on_update');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');
}
