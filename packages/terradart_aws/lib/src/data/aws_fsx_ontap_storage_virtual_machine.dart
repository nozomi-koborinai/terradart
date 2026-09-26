// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_storage_virtual_machine`.
const Set<String> _awsFsxOntapStorageVirtualMachineSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_fsx_ontap_storage_virtual_machine` (derived from provider schema).
@immutable
final class DataFsxOntapStorageVirtualMachineFilter {
  const DataFsxOntapStorageVirtualMachineFilter({
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

/// Factory wrapper for `aws_fsx_ontap_storage_virtual_machine`.
final class DataAwsFsxOntapStorageVirtualMachine extends Data {
  static const String tfType = 'aws_fsx_ontap_storage_virtual_machine';

  DataAwsFsxOntapStorageVirtualMachine({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataFsxOntapStorageVirtualMachineFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOntapStorageVirtualMachineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_directory_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get activeDirectoryConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'active_directory_configuration',
      );

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `lifecycle_status` attribute.
  TfRef<String> get lifecycleStatus =>
      TfRef.attribute<String>(this, 'lifecycle_status');

  /// Reference to `lifecycle_transition_reason` attribute.
  TfRef<List<Map<String, Object?>>> get lifecycleTransitionReason =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'lifecycle_transition_reason',
      );

  /// Reference to `subtype` attribute.
  TfRef<String> get subtype => TfRef.attribute<String>(this, 'subtype');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');
}
