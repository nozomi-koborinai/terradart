// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_service.dart' show GoogleCloudRunService;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_run_service_iam_member`.
const Set<String> _googleCloudRunServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_run_service_iam_member` (derived from provider schema).
@immutable
final class CloudRunServiceIamMemberCondition {
  const CloudRunServiceIamMemberCondition({
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

/// Factory wrapper for `google_cloud_run_service_iam_member`.
final class GoogleCloudRunServiceIamMember extends Resource {
  static const String tfType = 'google_cloud_run_service_iam_member';

  GoogleCloudRunServiceIamMember({
    required super.localName,
    required RefTo<GoogleCloudRunService> service,
    required TfArg<String> role,
    required IamPrincipal member,
    CloudRunServiceIamMemberCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? service.alsoAs('location')),
           'project': ?(project ?? service.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunServiceIamMember>`.
  RefTo<GoogleCloudRunServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');
}
