// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_deployment`.
const Set<String> _cloudflareWorkersDeploymentSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_deployment`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkersDeployment extends Data {
  static const String tfType = 'cloudflare_workers_deployment';

  DataCloudflareWorkersDeployment({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> deploymentId,
    required TfArg<String> scriptName,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'deployment_id': deploymentId,
           'script_name': scriptName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author_email` attribute.
  TfRef<String> get authorEmail =>
      TfRef.attribute<String>(this, 'author_email');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `strategy` attribute.
  TfRef<String> get strategy => TfRef.attribute<String>(this, 'strategy');
}
