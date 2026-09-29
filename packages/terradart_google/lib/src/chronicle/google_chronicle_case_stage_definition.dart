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
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> instance,
    required TfArg<String> location,
    required TfArg<num> order,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'instance': instance,
           'location': location,
           'order': order,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleChronicleCaseStageDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleCaseStageDefinition>`.
  RefTo<GoogleChronicleCaseStageDefinition> get ref => RefTo.of(this);
}
