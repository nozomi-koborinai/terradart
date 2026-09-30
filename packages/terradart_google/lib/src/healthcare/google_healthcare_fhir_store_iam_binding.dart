// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_fhir_store_iam_binding`.
const Set<String> _googleHealthcareFhirStoreIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_fhir_store_iam_binding` (derived from provider schema).
@immutable
final class HealthcareFhirStoreIamBindingCondition {
  const HealthcareFhirStoreIamBindingCondition({
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

/// Factory wrapper for `google_healthcare_fhir_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare FHIR
/// store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareFhirStoreIamMember] for additive grants.
final class GoogleHealthcareFhirStoreIamBinding extends Resource {
  static const String tfType = 'google_healthcare_fhir_store_iam_binding';

  GoogleHealthcareFhirStoreIamBinding({
    required super.localName,
    required TfArg<String> fhirStoreId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    HealthcareFhirStoreIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fhir_store_id': fhirStoreId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareFhirStoreIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareFhirStoreIamBinding>`.
  RefTo<GoogleHealthcareFhirStoreIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
