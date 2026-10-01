// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_debugmask`.
const Set<String> _googleApigeeEnvironmentDebugmaskSensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_debugmask`.
///
/// Apigee **environment debug mask** — configures which request/response
/// fields are masked in debug sessions for an environment.
///
/// **Cost / apply:** gcp-cost: no DebugMask SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Debug/Mask → 0). billing-behavior:
/// requires never_apply [GoogleApigeeEnvironment] (Active Base Environment
/// Usage Hours `C112-9373-5FC4` **$0.50/h**+). Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeEnvironmentDebugmask extends Resource {
  static const String tfType = 'google_apigee_environment_debugmask';

  GoogleApigeeEnvironmentDebugmask({
    required super.localName,
    required TfArg<String> envId,
    TfArg<List<String>>? faultXPaths,
    TfArg<Map<String, String>>? namespaces,
    TfArg<List<String>>? requestJsonPaths,
    TfArg<List<String>>? requestXPaths,
    TfArg<List<String>>? responseJsonPaths,
    TfArg<List<String>>? responseXPaths,
    TfArg<List<String>>? variables,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'env_id': envId,
           'fault_x_paths': ?faultXPaths,
           'namespaces': ?namespaces,
           'request_json_paths': ?requestJsonPaths,
           'request_x_paths': ?requestXPaths,
           'response_json_paths': ?responseJsonPaths,
           'response_x_paths': ?responseXPaths,
           'variables': ?variables,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentDebugmaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironmentDebugmask>`.
  RefTo<GoogleApigeeEnvironmentDebugmask> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `env_id` attribute.
  TfRef<String> get envId => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `fault_x_paths` attribute.
  TfRef<List<String>> get faultXPaths =>
      TfRef.attribute<List<String>>(this, 'fault_x_paths');

  /// Reference to `namespaces` attribute.
  TfRef<Map<String, String>> get namespaces =>
      TfRef.attribute<Map<String, String>>(this, 'namespaces');

  /// Reference to `request_json_paths` attribute.
  TfRef<List<String>> get requestJsonPaths =>
      TfRef.attribute<List<String>>(this, 'request_json_paths');

  /// Reference to `request_x_paths` attribute.
  TfRef<List<String>> get requestXPaths =>
      TfRef.attribute<List<String>>(this, 'request_x_paths');

  /// Reference to `response_json_paths` attribute.
  TfRef<List<String>> get responseJsonPaths =>
      TfRef.attribute<List<String>>(this, 'response_json_paths');

  /// Reference to `response_x_paths` attribute.
  TfRef<List<String>> get responseXPaths =>
      TfRef.attribute<List<String>>(this, 'response_x_paths');

  /// Reference to `variables` attribute.
  TfRef<List<String>> get variables =>
      TfRef.attribute<List<String>>(this, 'variables');
}
