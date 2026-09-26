// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_storage_virtual_machines`.
const Set<String> _awsFsxOntapStorageVirtualMachinesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_fsx_ontap_storage_virtual_machines` (derived from provider schema).
@immutable
final class DataFsxOntapStorageVirtualMachinesFilter {
  const DataFsxOntapStorageVirtualMachinesFilter({
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

/// Factory wrapper for `aws_fsx_ontap_storage_virtual_machines`.
final class DataAwsFsxOntapStorageVirtualMachines extends Data {
  static const String tfType = 'aws_fsx_ontap_storage_virtual_machines';

  DataAwsFsxOntapStorageVirtualMachines({
    required super.localName,
    TfArg<String>? region,
    List<DataFsxOntapStorageVirtualMachinesFilter>? filter,
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
  Set<String> get sensitiveFields =>
      _awsFsxOntapStorageVirtualMachinesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
