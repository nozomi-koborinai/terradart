// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_sql_pool_workload_classifier`.
const Set<String> _azurermSynapseSqlPoolWorkloadClassifierSensitive =
    <String>{};

/// Synapse Sql Pool Workload Classifier enum for `importance`.
extension type const SynapseSqlPoolWorkloadClassifierImportance._(
  TfArg<String> _
) implements TfArg<String> {
  SynapseSqlPoolWorkloadClassifierImportance.variable(String name)
    : this._(TfArg.variable(name));
  SynapseSqlPoolWorkloadClassifierImportance.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseSqlPoolWorkloadClassifierImportance.arg(TfArg<String> arg)
    : this._(arg);

  static const low = SynapseSqlPoolWorkloadClassifierImportance._(
    TfArgLiteral('low'),
  );
  static const belowNormal = SynapseSqlPoolWorkloadClassifierImportance._(
    TfArgLiteral('below_normal'),
  );
  static const normal = SynapseSqlPoolWorkloadClassifierImportance._(
    TfArgLiteral('normal'),
  );
  static const aboveNormal = SynapseSqlPoolWorkloadClassifierImportance._(
    TfArgLiteral('above_normal'),
  );
  static const high = SynapseSqlPoolWorkloadClassifierImportance._(
    TfArgLiteral('high'),
  );

  static const List<SynapseSqlPoolWorkloadClassifierImportance> values = [
    low,
    belowNormal,
    normal,
    aboveNormal,
    high,
  ];
}

/// Factory wrapper for `azurerm_synapse_sql_pool_workload_classifier`.
final class AzurermSynapseSqlPoolWorkloadClassifier extends Resource {
  static const String tfType = 'azurerm_synapse_sql_pool_workload_classifier';

  AzurermSynapseSqlPoolWorkloadClassifier(
    super.localName, {
    TfArg<String>? context,
    TfArg<String>? endTime,
    SynapseSqlPoolWorkloadClassifierImportance? importance,
    TfArg<String>? label,
    required TfArg<String> memberName,
    required TfArg<String> name,
    TfArg<String>? startTime,
    required TfArg<String> workloadGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'context': ?context,
           'end_time': ?endTime,
           'importance': ?importance,
           'label': ?label,
           'member_name': memberName,
           'name': name,
           'start_time': ?startTime,
           'workload_group_id': workloadGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseSqlPoolWorkloadClassifierSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseSqlPoolWorkloadClassifier>`.
  RefTo<AzurermSynapseSqlPoolWorkloadClassifier> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `context` attribute.
  TfRef<String> get context => TfRef.attribute<String>(this, 'context');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `importance` attribute.
  TfRef<String> get importance => TfRef.attribute<String>(this, 'importance');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `member_name` attribute.
  TfRef<String> get memberName => TfRef.attribute<String>(this, 'member_name');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `workload_group_id` attribute.
  TfRef<String> get workloadGroupId =>
      TfRef.attribute<String>(this, 'workload_group_id');
}
