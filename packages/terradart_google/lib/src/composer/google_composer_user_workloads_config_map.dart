// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_composer_user_workloads_config_map`.
const Set<String> _googleComposerUserWorkloadsConfigMapSensitive = <String>{};

/// Factory wrapper for `google_composer_user_workloads_config_map`.
///
/// User workloads ConfigMap used by Airflow tasks that run with Kubernetes
/// Executor or KubernetesPodOperator. Intended for Composer 3 Environments.
///
/// Composer **user workloads ConfigMap** on a [GoogleComposerEnvironment].
///
/// **Cost:** no separate Cloud Billing Catalog SKU under Composer
/// `1992-3666-B975` — ConfigMap metadata on the parent environment.
/// Deferred with the environment (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleComposerUserWorkloadsConfigMap(
///   localName: 'cfg',
///   name: TfArg.literal('app-config'),
///   environment: TfArg.ref(env.nameRef),
///   region: TfArg.literal('us-central1'),
///   data: {
///     'KEY': TfArg.literal('value'),
///   },
/// );
/// ```
final class GoogleComposerUserWorkloadsConfigMap extends Resource {
  static const String tfType = 'google_composer_user_workloads_config_map';

  GoogleComposerUserWorkloadsConfigMap({
    required super.localName,
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
      _googleComposerUserWorkloadsConfigMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComposerUserWorkloadsConfigMap>`.
  RefTo<GoogleComposerUserWorkloadsConfigMap> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data` attribute.
  TfRef<Map<String, String>> get dataRef =>
      TfRef.attribute<Map<String, String>>(this, 'data');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environmentRef =>
      TfRef.attribute<String>(this, 'environment');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
