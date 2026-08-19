// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_evaluation`.
const Set<String> _googleCesEvaluationSensitive = <String>{};

/// Factory wrapper for `google_ces_evaluation`.
final class GoogleCesEvaluation extends Resource {
  static const String tfType = 'google_ces_evaluation';

  GoogleCesEvaluation({
    required super.localName,
    required TfArg<String> app,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> evaluationId,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<List<String>>? tags,
    TfArg<Map<String, dynamic>>? golden,
    TfArg<Map<String, dynamic>>? scenario,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'app': app,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'display_name': displayName,
           'evaluation_id': evaluationId,
           'location': location,
           if (project != null) 'project': project,
           if (tags != null) 'tags': tags,
           if (golden != null) 'golden': golden,
           if (scenario != null) 'scenario': scenario,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesEvaluationSensitive;
}
