// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_maintenance_window_target`.
const Set<String> _awsSsmMaintenanceWindowTargetSensitive = <String>{};

/// Typed helper for the `targets` block of
/// `aws_ssm_maintenance_window_target` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTargetTargets {
  const SsmMaintenanceWindowTargetTargets({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_maintenance_window_target`.
final class AwsSsmMaintenanceWindowTarget extends Resource {
  static const String tfType = 'aws_ssm_maintenance_window_target';

  AwsSsmMaintenanceWindowTarget({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? ownerInformation,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    required TfArg<String> windowId,
    required List<SsmMaintenanceWindowTargetTargets> targets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (ownerInformation != null) 'owner_information': ownerInformation,
           if (region != null) 'region': region,
           'resource_type': resourceType,
           'window_id': windowId,
           'targets': TfArg.literal([for (final e in targets) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmMaintenanceWindowTargetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
