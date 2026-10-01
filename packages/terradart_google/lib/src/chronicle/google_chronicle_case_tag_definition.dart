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
///
/// A Chronicle (Google SecOps) case tag rule: cases matching `value`
/// by `matchCriteria` / `comparisonType` get the `displayName` tag.
/// `propertyName` applies only with `matchCriteria:
/// .literal(.byEntityPropertyName)`.
final class GoogleChronicleCaseTagDefinition extends Resource {
  static const String tfType = 'google_chronicle_case_tag_definition';

  GoogleChronicleCaseTagDefinition(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<String> displayName,
    required TfArg<ChronicleCaseTagDefinitionMatchCriteria> matchCriteria,
    required TfArg<ChronicleCaseTagDefinitionComparisonType> comparisonType,
    required TfArg<String> value,
    TfArg<String>? propertyName,
    required TfArg<num> priority,
    required TfArg<bool> canBeCaseTitle,
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
           'match_criteria': matchCriteria,
           'comparison_type': comparisonType,
           'value': value,
           'property_name': ?propertyName,
           'priority': priority,
           'can_be_case_title': canBeCaseTitle,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleCaseTagDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleCaseTagDefinition>`.
  RefTo<GoogleChronicleCaseTagDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_tag_definition_id` attribute.
  TfRef<String> get caseTagDefinitionId =>
      TfRef.attribute<String>(this, 'case_tag_definition_id');

  /// Reference to `can_be_case_title` attribute.
  TfRef<bool> get canBeCaseTitle =>
      TfRef.attribute<bool>(this, 'can_be_case_title');

  /// Reference to `comparison_type` attribute.
  TfRef<String> get comparisonType =>
      TfRef.attribute<String>(this, 'comparison_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `match_criteria` attribute.
  TfRef<String> get matchCriteria =>
      TfRef.attribute<String>(this, 'match_criteria');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `property_name` attribute.
  TfRef<String> get propertyName =>
      TfRef.attribute<String>(this, 'property_name');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
