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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'app_version_id': appVersionId,
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAppVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesAppVersion>`.
  RefTo<GoogleCesAppVersion> get ref => RefTo.of(this);

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

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `app_version_id` attribute.
  TfRef<String> get appVersionIdRef =>
      TfRef.attribute<String>(this, 'app_version_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
