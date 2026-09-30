// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_budget_resource_association`.
const Set<String> _awsServicecatalogBudgetResourceAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_servicecatalog_budget_resource_association`.
final class AwsServicecatalogBudgetResourceAssociation extends Resource {
  static const String tfType = 'aws_servicecatalog_budget_resource_association';

  AwsServicecatalogBudgetResourceAssociation({
    required super.localName,
    required TfArg<String> budgetName,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'budget_name': budgetName,
           'region': ?region,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogBudgetResourceAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogBudgetResourceAssociation>`.
  RefTo<AwsServicecatalogBudgetResourceAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `budget_name` attribute.
  TfRef<String> get budgetNameRef =>
      TfRef.attribute<String>(this, 'budget_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceIdRef =>
      TfRef.attribute<String>(this, 'resource_id');
}
