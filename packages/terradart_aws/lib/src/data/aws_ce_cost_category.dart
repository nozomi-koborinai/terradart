// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ce/aws_ce_cost_category.dart';

/// Sensitive field paths for `aws_ce_cost_category`.
const Set<String> _awsCeCostCategorySensitive = <String>{};

/// Factory wrapper for `aws_ce_cost_category`.
final class DataAwsCeCostCategory extends Data {
  static const String tfType = 'aws_ce_cost_category';

  DataAwsCeCostCategory({
    required super.localName,
    required TfArg<String> costCategoryArn,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'cost_category_arn': costCategoryArn, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCeCostCategorySensitive;

  /// A reference to the `aws_ce_cost_category` this data source reads, for
  /// arguments typed `RefTo<AwsCeCostCategory>`.
  RefTo<AwsCeCostCategory> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_value` attribute.
  TfRef<String> get defaultValue =>
      TfRef.attribute<String>(this, 'default_value');

  /// Reference to `effective_end` attribute.
  TfRef<String> get effectiveEnd =>
      TfRef.attribute<String>(this, 'effective_end');

  /// Reference to `effective_start` attribute.
  TfRef<String> get effectiveStart =>
      TfRef.attribute<String>(this, 'effective_start');

  /// Reference to `rule` attribute.
  TfRef<List<Map<String, Object?>>> get rule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rule');

  /// Reference to `rule_version` attribute.
  TfRef<String> get ruleVersion =>
      TfRef.attribute<String>(this, 'rule_version');

  /// Reference to `split_charge_rule` attribute.
  TfRef<List<Map<String, Object?>>> get splitChargeRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'split_charge_rule');

  /// Reference to `cost_category_arn` attribute.
  TfRef<String> get costCategoryArnRef =>
      TfRef.attribute<String>(this, 'cost_category_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
