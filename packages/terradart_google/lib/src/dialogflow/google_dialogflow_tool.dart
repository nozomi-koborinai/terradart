// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_tool`.
const Set<String> _googleDialogflowToolSensitive = <String>{
  'open_api_spec.authentication.api_key_config.api_key',
  'open_api_spec.authentication.bearer_token_config.token',
  'open_api_spec.authentication.oauth_config.client_secret',
};

/// Factory wrapper for `google_dialogflow_tool`.
///
/// Provides a list of actions available to a Generator (e.g., OpenAPI call,
/// Function call, Connector call).
final class GoogleDialogflowTool extends Resource {
  static const String tfType = 'google_dialogflow_tool';

  GoogleDialogflowTool(
    super.localName, {
    TfArg<Map<String, String>>? actionConfirmationRequirement,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<String>? toolId,
    required TfArg<String> toolKey,
    TfArg<Map<String, dynamic>>? connectorSpec,
    TfArg<Map<String, dynamic>>? functionSpec,
    TfArg<Map<String, dynamic>>? openApiSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_confirmation_requirement': ?actionConfirmationRequirement,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'location': location,
           'project': ?project,
           'tool_id': ?toolId,
           'tool_key': toolKey,
           'connector_spec': ?connectorSpec,
           'function_spec': ?functionSpec,
           'open_api_spec': ?openApiSpec,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowToolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowTool>`.
  RefTo<GoogleDialogflowTool> get ref => RefTo.of(this);
}
