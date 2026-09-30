// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_job_iam_binding`.
const Set<String> _googleCloudRunV2JobIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_job_iam_binding` (derived from provider schema).
@immutable
final class CloudRunV2JobIamBindingCondition {
  const CloudRunV2JobIamBindingCondition({
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

/// Factory wrapper for `google_cloud_run_v2_job_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Run v2 job.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleCloudRunV2JobIamMember] for additive grants.
final class GoogleCloudRunV2JobIamBinding extends Resource {
  static const String tfType = 'google_cloud_run_v2_job_iam_binding';

  GoogleCloudRunV2JobIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    CloudRunV2JobIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2JobIamBinding>`.
  RefTo<GoogleCloudRunV2JobIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
