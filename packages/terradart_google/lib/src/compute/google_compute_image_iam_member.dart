// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_image_iam_member`.
const Set<String> _googleComputeImageIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_image_iam_member` (derived from provider schema).
@immutable
final class ComputeImageIamMemberCondition {
  const ComputeImageIamMemberCondition({
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

/// Factory wrapper for `google_compute_image_iam_member`.
final class GoogleComputeImageIamMember extends Resource {
  static const String tfType = 'google_compute_image_iam_member';

  GoogleComputeImageIamMember({
    required super.localName,
    required TfArg<String> image,
    required TfArg<String> role,
    required TfArg<String> member,
    ComputeImageIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image': image,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeImageIamMember>`.
  RefTo<GoogleComputeImageIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
