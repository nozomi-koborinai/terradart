// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_bucket_iam_member`.
const Set<String> _googleComputeBackendBucketIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_backend_bucket_iam_member` (derived from provider schema).
@immutable
final class ComputeBackendBucketIamMemberCondition {
  const ComputeBackendBucketIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_backend_bucket_iam_member`.
final class GoogleComputeBackendBucketIamMember extends Resource {
  static const String tfType = 'google_compute_backend_bucket_iam_member';

  GoogleComputeBackendBucketIamMember({
    required super.localName,
    required TfArg<String> member,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> role,
    ComputeBackendBucketIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'member': member,
           'name': name,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendBucketIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendBucketIamMember>`.
  RefTo<GoogleComputeBackendBucketIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
