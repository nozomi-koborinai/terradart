// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_consent_store.dart'
    show GoogleHealthcareConsentStore;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_healthcare_consent_store_iam_member`.
const Set<String> _googleHealthcareConsentStoreIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_consent_store_iam_member` (derived from provider schema).
@immutable
final class HealthcareConsentStoreIamMemberCondition {
  const HealthcareConsentStoreIamMemberCondition({
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

/// Factory wrapper for `google_healthcare_consent_store_iam_member`.
final class GoogleHealthcareConsentStoreIamMember extends Resource {
  static const String tfType = 'google_healthcare_consent_store_iam_member';

  GoogleHealthcareConsentStoreIamMember({
    required super.localName,
    required RefTo<GoogleHealthcareConsentStore> consentStore,
    TfArg<String>? dataset,
    required TfArg<String> role,
    required IamPrincipal member,
    HealthcareConsentStoreIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareConsentStoreIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareConsentStoreIamMember>`.
  RefTo<GoogleHealthcareConsentStoreIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `consent_store_id` attribute.
  TfRef<String> get consentStoreIdRef =>
      TfRef.attribute<String>(this, 'consent_store_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get datasetRef => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
