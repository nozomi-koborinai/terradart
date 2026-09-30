// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_service_iam_member`.
const Set<String> _googleCloudRunV2ServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_v2_service_iam_member` (derived from provider schema).
@immutable
final class CloudRunV2ServiceIamMemberCondition {
  const CloudRunV2ServiceIamMemberCondition({
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

/// Factory wrapper for `google_cloud_run_v2_service_iam_member`.
final class GoogleCloudRunV2ServiceIamMember extends Resource {
  static const String tfType = 'google_cloud_run_v2_service_iam_member';

  GoogleCloudRunV2ServiceIamMember({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
    CloudRunV2ServiceIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2ServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2ServiceIamMember>`.
  RefTo<GoogleCloudRunV2ServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
