// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_fhir_store.dart'
    show GoogleHealthcareFhirStore;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_healthcare_fhir_store_iam_member`.
const Set<String> _googleHealthcareFhirStoreIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_fhir_store_iam_member` (derived from provider schema).
@immutable
final class HealthcareFhirStoreIamMemberCondition {
  const HealthcareFhirStoreIamMemberCondition({
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

/// Factory wrapper for `google_healthcare_fhir_store_iam_member`.
///
/// Additive IAM member on a [GoogleHealthcareFhirStore].
///
/// Prefer [GoogleHealthcareFhirStoreIamMember] over binding/policy adjuncts —
/// those overwrite grants made outside Terraform.
final class GoogleHealthcareFhirStoreIamMember extends Resource {
  static const String tfType = 'google_healthcare_fhir_store_iam_member';

  GoogleHealthcareFhirStoreIamMember({
    required super.localName,
    required RefTo<GoogleHealthcareFhirStore> fhirStore,
    required TfArg<String> role,
    required IamPrincipal member,
    HealthcareFhirStoreIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fhir_store_id': fhirStore.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareFhirStoreIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareFhirStoreIamMember>`.
  RefTo<GoogleHealthcareFhirStoreIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `fhir_store_id` attribute.
  TfRef<String> get fhirStoreIdRef =>
      TfRef.attribute<String>(this, 'fhir_store_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
