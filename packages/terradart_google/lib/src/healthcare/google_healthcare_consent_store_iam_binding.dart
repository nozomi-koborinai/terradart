// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_consent_store.dart'
    show GoogleHealthcareConsentStore;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_healthcare_consent_store_iam_binding`.
const Set<String> _googleHealthcareConsentStoreIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_consent_store_iam_binding` (derived from provider schema).
@immutable
final class HealthcareConsentStoreIamBindingCondition {
  const HealthcareConsentStoreIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_consent_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare
/// Consent Store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareConsentStoreIamMember] for additive grants.
final class GoogleHealthcareConsentStoreIamBinding extends Resource {
  static const String tfType = 'google_healthcare_consent_store_iam_binding';

  GoogleHealthcareConsentStoreIamBinding({
    required super.localName,
    required RefTo<GoogleHealthcareConsentStore> consentStore,
    TfArg<String>? dataset,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    HealthcareConsentStoreIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consent_store_id': consentStore.encodeAs('name'),
           'dataset': ?(dataset ?? consentStore.alsoAs('dataset')),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareConsentStoreIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareConsentStoreIamBinding>`.
  RefTo<GoogleHealthcareConsentStoreIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `consent_store_id` attribute.
  TfRef<String> get consentStoreIdRef =>
      TfRef.attribute<String>(this, 'consent_store_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get datasetRef => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
