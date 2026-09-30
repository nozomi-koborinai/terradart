// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_model_garden_enable_model`.
const Set<String> _googleVertexAiModelGardenEnableModelSensitive = <String>{};

/// Vertex Ai Model Garden Enable Model Enablement enum for `enablement_state`.
enum VertexAiModelGardenEnableModelEnablementState implements TerraformEnum {
  enablementStateUnspecified('ENABLEMENT_STATE_UNSPECIFIED'),
  enablementStateSucceeded('ENABLEMENT_STATE_SUCCEEDED'),
  enablementStateFailed('ENABLEMENT_STATE_FAILED');

  const VertexAiModelGardenEnableModelEnablementState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_vertex_ai_model_garden_enable_model`.
///
/// Enables a Model Garden publisher model for a project so that it can be
/// deployed. This calls the synchronous `ModelGardenService.EnableModel`
/// method, which checks that the prerequisites for the model are met (for
/// example, a completed questionnaire and accepted consents, or an active
/// Private Offer) before enabling it.
///
/// ~> **Note:** The underlying API does not provide a way to disable a model
/// once it has been enabled, so destroying this resource only removes it from
/// Terraform state and does not affect the project's enablement status.
final class GoogleVertexAiModelGardenEnableModel extends Resource {
  static const String tfType = 'google_vertex_ai_model_garden_enable_model';

  GoogleVertexAiModelGardenEnableModel({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> publisherModelName,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'project': ?project,
           'publisher_model_name': publisherModelName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiModelGardenEnableModelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiModelGardenEnableModel>`.
  RefTo<GoogleVertexAiModelGardenEnableModel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enablement_state` attribute.
  TfRef<String> get enablementState =>
      TfRef.attribute<String>(this, 'enablement_state');

  /// Reference to `publisher_endpoint` attribute.
  TfRef<String> get publisherEndpoint =>
      TfRef.attribute<String>(this, 'publisher_endpoint');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `publisher_model_name` attribute.
  TfRef<String> get publisherModelNameRef =>
      TfRef.attribute<String>(this, 'publisher_model_name');
}
