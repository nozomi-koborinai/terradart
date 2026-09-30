// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_case_stage_definition`.
const Set<String> _googleChronicleCaseStageDefinitionSensitive = <String>{};

/// Factory wrapper for `google_chronicle_case_stage_definition`.
///
/// CaseStageDefinition represents a stage in the lifecycle of a case.
final class GoogleChronicleCaseStageDefinition extends Resource {
  static const String tfType = 'google_chronicle_case_stage_definition';

  GoogleChronicleCaseStageDefinition({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<String> displayName,
    required TfArg<num> order,
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
           'instance': instance,
           'display_name': displayName,
           'order': order,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleChronicleCaseStageDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleCaseStageDefinition>`.
  RefTo<GoogleChronicleCaseStageDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_stage_definition_id` attribute.
  TfRef<String> get caseStageDefinitionId =>
      TfRef.attribute<String>(this, 'case_stage_definition_id');
}
