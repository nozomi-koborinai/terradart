// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_case_tag_definition`.
const Set<String> _googleChronicleCaseTagDefinitionSensitive = <String>{};

/// Factory wrapper for `google_chronicle_case_tag_definition`.
///
/// A CaseTagDefinition is used to classify and tag cases based on criteria.
final class GoogleChronicleCaseTagDefinition extends Resource {
  static const String tfType = 'google_chronicle_case_tag_definition';

  GoogleChronicleCaseTagDefinition({
    required super.localName,
    required TfArg<bool> canBeCaseTitle,
    required TfArg<String> comparisonType,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> instance,
    required TfArg<String> location,
    required TfArg<String> matchCriteria,
    required TfArg<num> priority,
    TfArg<String>? project,
    TfArg<String>? propertyName,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'can_be_case_title': canBeCaseTitle,
           'comparison_type': comparisonType,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           'instance': instance,
           'location': location,
           'match_criteria': matchCriteria,
           'priority': priority,
           if (project != null) 'project': project,
           if (propertyName != null) 'property_name': propertyName,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleCaseTagDefinitionSensitive;
}
