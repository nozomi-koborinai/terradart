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

  GoogleChronicleCaseTagDefinition({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_tag_definition_id` attribute.
  TfRef<String> get caseTagDefinitionId =>
      TfRef.attribute<String>(this, 'case_tag_definition_id');
}
