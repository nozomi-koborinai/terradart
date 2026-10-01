// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dataset.dart'
    show GoogleHealthcareDataset;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_healthcare_dataset_iam_member`.
const Set<String> _googleHealthcareDatasetIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_dataset_iam_member` (derived from provider schema).
@immutable
final class HealthcareDatasetIamMemberCondition {
  const HealthcareDatasetIamMemberCondition({
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

/// Factory wrapper for `google_healthcare_dataset_iam_member`.
final class GoogleHealthcareDatasetIamMember extends Resource {
  static const String tfType = 'google_healthcare_dataset_iam_member';

  GoogleHealthcareDatasetIamMember({
    required super.localName,
    required RefTo<GoogleHealthcareDataset> dataset,
    required TfArg<String> role,
    required IamPrincipal member,
    HealthcareDatasetIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': dataset.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareDatasetIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareDatasetIamMember>`.
  RefTo<GoogleHealthcareDatasetIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetIdRef => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
