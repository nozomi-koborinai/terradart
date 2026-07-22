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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'environment': environment,
           if (region != null) 'region': region,
           if (data != null) 'data': data,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComposerUserWorkloadsConfigMapSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
