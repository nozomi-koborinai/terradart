// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_service_project_attachment`.
const Set<String> _googleApphubServiceProjectAttachmentSensitive = <String>{};

/// Factory wrapper for `google_apphub_service_project_attachment`.
///
/// Represents a Service project attachment to the Host Project.
///
/// App Hub service-project attachment — attaches a service project to the
/// host project's App Hub boundary so its resources can be discovered.
///
/// Typically needs a second GCP project (often org-scoped create). The
/// host project attachment id is usually the service project's id.
final class GoogleApphubServiceProjectAttachment extends Resource {
  static const String tfType = 'google_apphub_service_project_attachment';

  GoogleApphubServiceProjectAttachment({
    required super.localName,
    required TfArg<String> serviceProjectAttachmentId,
    TfArg<String>? serviceProject,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_project_attachment_id': serviceProjectAttachmentId,
           if (serviceProject != null) 'service_project': serviceProject,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApphubServiceProjectAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
