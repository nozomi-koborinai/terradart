// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_job_schedule`.
const Set<String> _azurermMssqlJobScheduleSensitive = <String>{};

/// Mssql Job Schedule enum for `type`.
extension type const MssqlJobScheduleType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlJobScheduleType.variable(String name) : this._(TfArg.variable(name));
  MssqlJobScheduleType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlJobScheduleType.arg(TfArg<String> arg) : this._(arg);

  static const once = MssqlJobScheduleType._(TfArgLiteral('Once'));
  static const recurring = MssqlJobScheduleType._(TfArgLiteral('Recurring'));

  static const List<MssqlJobScheduleType> values = [once, recurring];
}

/// Factory wrapper for `azurerm_mssql_job_schedule`.
final class AzurermMssqlJobSchedule extends Resource {
  static const String tfType = 'azurerm_mssql_job_schedule';

  AzurermMssqlJobSchedule(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<String>? endTime,
    TfArg<String>? interval,
    required TfArg<String> jobId,
    TfArg<String>? startTime,
    required MssqlJobScheduleType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'end_time': ?endTime,
           'interval': ?interval,
           'job_id': jobId,
           'start_time': ?startTime,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlJobScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlJobSchedule>`.
  RefTo<AzurermMssqlJobSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `interval` attribute.
  TfRef<String> get interval => TfRef.attribute<String>(this, 'interval');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
