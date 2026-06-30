// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_consent_store`.
const Set<String> _googleHealthcareConsentStoreSensitive = <String>{};

/// Factory wrapper for `google_healthcare_consent_store`.
final class GoogleHealthcareConsentStore extends Resource {
  static const String tfType = 'google_healthcare_consent_store';

  GoogleHealthcareConsentStore({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dataset,
    TfArg<String>? defaultConsentTtl,
    TfArg<bool>? enableConsentCreateOnUpdate,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset,
           if (defaultConsentTtl != null)
             'default_consent_ttl': defaultConsentTtl,
           if (enableConsentCreateOnUpdate != null)
             'enable_consent_create_on_update': enableConsentCreateOnUpdate,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareConsentStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
