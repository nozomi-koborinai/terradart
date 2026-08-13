// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_app_version`.
const Set<String> _googleCesAppVersionSensitive = <String>{};

/// Factory wrapper for `google_ces_app_version`.
///
/// Description
///
/// Customer Engagement Suite **app version** — immutable snapshot of an
/// app's agents / tools / guardrails. Pass the parent app's `app_id` as
/// [app]. Terraform fills `snapshot` after create.
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB`). billing-behavior: a version is design-time
/// metadata — session SKUs fire only on CX Agent Studio chat/voice
/// sessions. This factory never creates `google_ces_deployment`. Enable
/// `ces.googleapis.com` via [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleCesAppVersion(
///   localName: 'v1',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   appVersionId: TfArg.literal('v1'),
///   displayName: TfArg.literal('terradart-ces-v1'),
/// );
/// ```
final class GoogleCesAppVersion extends Resource {
  static const String tfType = 'google_ces_app_version';

  GoogleCesAppVersion({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> appVersionId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'app_version_id': appVersionId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAppVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `snapshot` attribute.
  TfRef<List<Map<String, Object?>>> get snapshot =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot');
}
