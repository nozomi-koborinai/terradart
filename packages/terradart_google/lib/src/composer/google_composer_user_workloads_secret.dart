// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_composer_user_workloads_secret`.
const Set<String> _googleComposerUserWorkloadsSecretSensitive = <String>{
  'data',
};

/// Factory wrapper for `google_composer_user_workloads_secret`.
///
/// Composer **user workloads Secret** on a [GoogleComposerEnvironment].
///
/// **Cost:** no separate Cloud Billing Catalog SKU under Composer
/// `1992-3666-B975` — Secret metadata on the parent environment.
/// Deferred with the environment (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleComposerUserWorkloadsSecret(
///   'sec',
///   name: TfArg.literal('app-secret'),
///   environment: env.name,
///   region: TfArg.literal('us-central1'),
///   data: TfArg.literal({
///     'PASSWORD': 'redacted',
///   }),
/// );
/// ```
final class GoogleComposerUserWorkloadsSecret extends Resource {
  static const String tfType = 'google_composer_user_workloads_secret';

  GoogleComposerUserWorkloadsSecret(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> environment,
    TfArg<String>? region,
    TfArg<Map<String, String>>? data,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'environment': environment,
           'region': ?region,
           'data': ?data,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComposerUserWorkloadsSecretSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComposerUserWorkloadsSecret>`.
  RefTo<GoogleComposerUserWorkloadsSecret> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data` attribute.
  TfRef<Map<String, String>> get data =>
      TfRef.attribute<Map<String, String>>(this, 'data');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
