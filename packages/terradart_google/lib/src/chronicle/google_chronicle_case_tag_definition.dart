// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_case_tag_definition`.
const Set<String> _googleChronicleCaseTagDefinitionSensitive = <String>{};

/// Chronicle Case Tag Definition Comparison enum for `comparison_type`.
enum ChronicleCaseTagDefinitionComparisonType implements TerraformEnum {
  exact('EXACT'),
  startWith('START_WITH'),
  contain('CONTAIN'),
  endsWith('ENDS_WITH');

  const ChronicleCaseTagDefinitionComparisonType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Chronicle Case Tag Definition Match enum for `match_criteria`.
enum ChronicleCaseTagDefinitionMatchCriteria implements TerraformEnum {
  byVendor('BY_VENDOR'),
  byProduct('BY_PRODUCT'),
  byRuleGenerator('BY_RULE_GENERATOR'),
  byEntityPropertyName('BY_ENTITY_PROPERTY_NAME'),
  dataDriven('DATA_DRIVEN'),
  system('SYSTEM');

  const ChronicleCaseTagDefinitionMatchCriteria(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_chronicle_case_tag_definition`.
///
/// A CaseTagDefinition is used to classify and tag cases based on criteria.
final class GoogleChronicleCaseTagDefinition extends Resource {
  static const String tfType = 'google_chronicle_case_tag_definition';

  GoogleChronicleCaseTagDefinition({
    required super.localName,
    required TfArg<bool> canBeCaseTitle,
    required TfArg<ChronicleCaseTagDefinitionComparisonType> comparisonType,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> instance,
    required TfArg<String> location,
    required TfArg<ChronicleCaseTagDefinitionMatchCriteria> matchCriteria,
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
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'instance': instance,
           'location': location,
           'match_criteria': matchCriteria,
           'priority': priority,
           'project': ?project,
           'property_name': ?propertyName,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleCaseTagDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleCaseTagDefinition>`.
  RefTo<GoogleChronicleCaseTagDefinition> get ref => RefTo.of(this);
}
