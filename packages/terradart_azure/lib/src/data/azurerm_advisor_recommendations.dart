// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_advisor_recommendations`.
const Set<String> _azurermAdvisorRecommendationsSensitive = <String>{};

/// Data Advisor Recommendations Filter By enum for `filter_by_category`.
extension type const DataAdvisorRecommendationsFilterByCategory._(
  TfArg<String> _
) implements TfArg<String> {
  DataAdvisorRecommendationsFilterByCategory.variable(String name)
    : this._(TfArg.variable(name));
  DataAdvisorRecommendationsFilterByCategory.expression(String template)
    : this._(TfArg.expression(template));
  const DataAdvisorRecommendationsFilterByCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const cost = DataAdvisorRecommendationsFilterByCategory._(
    TfArgLiteral('Cost'),
  );
  static const highavailability = DataAdvisorRecommendationsFilterByCategory._(
    TfArgLiteral('HighAvailability'),
  );
  static const operationalexcellence =
      DataAdvisorRecommendationsFilterByCategory._(
        TfArgLiteral('OperationalExcellence'),
      );
  static const performance = DataAdvisorRecommendationsFilterByCategory._(
    TfArgLiteral('Performance'),
  );
  static const security = DataAdvisorRecommendationsFilterByCategory._(
    TfArgLiteral('Security'),
  );

  static const List<DataAdvisorRecommendationsFilterByCategory> values = [
    cost,
    highavailability,
    operationalexcellence,
    performance,
    security,
  ];
}

/// Factory wrapper for `azurerm_advisor_recommendations`.
final class DataAzurermAdvisorRecommendations extends Data {
  static const String tfType = 'azurerm_advisor_recommendations';

  DataAzurermAdvisorRecommendations(
    super.localName, {
    List<DataAdvisorRecommendationsFilterByCategory>? filterByCategory,
    TfArg<List<String>>? filterByRecommendationTypeGuids,
    TfArg<List<String>>? filterByResourceGroups,
    TfArg<List<String>>? filterByResourceIds,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filterByCategory != null)
             'filter_by_category': TfArg.literal([
               for (final e in filterByCategory) e.toTfJson(),
             ]),
           'filter_by_recommendation_type_guids':
               ?filterByRecommendationTypeGuids,
           'filter_by_resource_groups': ?filterByResourceGroups,
           'filter_by_resource_ids': ?filterByResourceIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAdvisorRecommendationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recommendations` attribute.
  TfRef<List<Map<String, Object?>>> get recommendations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'recommendations');

  /// Reference to `filter_by_category` attribute.
  TfRef<List<String>> get filterByCategory =>
      TfRef.attribute<List<String>>(this, 'filter_by_category');

  /// Reference to `filter_by_recommendation_type_guids` attribute.
  TfRef<List<String>> get filterByRecommendationTypeGuids =>
      TfRef.attribute<List<String>>(
        this,
        'filter_by_recommendation_type_guids',
      );

  /// Reference to `filter_by_resource_groups` attribute.
  TfRef<List<String>> get filterByResourceGroups =>
      TfRef.attribute<List<String>>(this, 'filter_by_resource_groups');

  /// Reference to `filter_by_resource_ids` attribute.
  TfRef<List<String>> get filterByResourceIds =>
      TfRef.attribute<List<String>>(this, 'filter_by_resource_ids');
}
