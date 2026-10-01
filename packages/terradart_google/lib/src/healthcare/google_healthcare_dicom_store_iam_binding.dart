// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dicom_store.dart'
    show GoogleHealthcareDicomStore;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_healthcare_dicom_store_iam_binding`.
const Set<String> _googleHealthcareDicomStoreIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_dicom_store_iam_binding` (derived from provider schema).
@immutable
final class HealthcareDicomStoreIamBindingCondition {
  const HealthcareDicomStoreIamBindingCondition({
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

/// Factory wrapper for `google_healthcare_dicom_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare DICOM
/// store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareDicomStoreIamMember] for additive grants.
final class GoogleHealthcareDicomStoreIamBinding extends Resource {
  static const String tfType = 'google_healthcare_dicom_store_iam_binding';

  GoogleHealthcareDicomStoreIamBinding({
    required super.localName,
    required RefTo<GoogleHealthcareDicomStore> dicomStore,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    HealthcareDicomStoreIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dicom_store_id': dicomStore.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareDicomStoreIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareDicomStoreIamBinding>`.
  RefTo<GoogleHealthcareDicomStoreIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dicom_store_id` attribute.
  TfRef<String> get dicomStoreIdRef =>
      TfRef.attribute<String>(this, 'dicom_store_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
