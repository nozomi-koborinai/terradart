// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_maintenance_windows`.
const Set<String> _awsSsmMaintenanceWindowsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ssm_maintenance_windows` (derived from provider schema).
@immutable
final class DataSsmMaintenanceWindowsFilter {
  const DataSsmMaintenanceWindowsFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_maintenance_windows`.
final class DataAwsSsmMaintenanceWindows extends Data {
  static const String tfType = 'aws_ssm_maintenance_windows';

  DataAwsSsmMaintenanceWindows({
    required super.localName,
    TfArg<String>? region,
    List<DataSsmMaintenanceWindowsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmMaintenanceWindowsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
