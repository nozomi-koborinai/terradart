// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_project`.
const Set<String> _googleFirebaseProjectSensitive = <String>{};

/// Factory wrapper for `google_firebase_project`.
///
/// A Google Cloud Firebase instance. This enables Firebase resources on a given
/// Google Project. Since a FirebaseProject is actually also a GCP Project, a
/// FirebaseProject uses underlying GCP identifiers (most importantly, the
/// projectId) as its own for easy interop with GCP APIs. Once Firebase has been
/// added to a Google Project it cannot be removed.
final class GoogleFirebaseProject extends Resource {
  static const String tfType = 'google_firebase_project';

  GoogleFirebaseProject({
    required super.localName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseProject>`.
  RefTo<GoogleFirebaseProject> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project_number` attribute.
  TfRef<String> get projectNumber =>
      TfRef.attribute<String>(this, 'project_number');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
