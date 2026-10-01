// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_maintenance_window_target`.
const Set<String> _awsSsmMaintenanceWindowTargetSensitive = <String>{};

/// Ssm Maintenance Window Target Resource enum for `resource_type`.
extension type const SsmMaintenanceWindowTargetResourceType._(TfArg<String> _)
    implements TfArg<String> {
  SsmMaintenanceWindowTargetResourceType.variable(String name)
    : this._(TfArg.variable(name));
  SsmMaintenanceWindowTargetResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const SsmMaintenanceWindowTargetResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const instance = SsmMaintenanceWindowTargetResourceType._(
    TfArgLiteral('INSTANCE'),
  );
  static const resourceGroup = SsmMaintenanceWindowTargetResourceType._(
    TfArgLiteral('RESOURCE_GROUP'),
  );

  static const List<SsmMaintenanceWindowTargetResourceType> values = [
    instance,
    resourceGroup,
  ];
}

/// Typed helper for the `targets` block of
/// `aws_ssm_maintenance_window_target` (derived from provider schema).
@immutable
final class SsmMaintenanceWindowTargetTargets {
  const SsmMaintenanceWindowTargetTargets({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_maintenance_window_target`.
final class AwsSsmMaintenanceWindowTarget extends Resource {
  static const String tfType = 'aws_ssm_maintenance_window_target';

  AwsSsmMaintenanceWindowTarget(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? ownerInformation,
    TfArg<String>? region,
    required SsmMaintenanceWindowTargetResourceType resourceType,
    required TfArg<String> windowId,
    required List<SsmMaintenanceWindowTargetTargets> targets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': ?name,
           'owner_information': ?ownerInformation,
           'region': ?region,
           'resource_type': resourceType,
           'window_id': windowId,
           'targets': TfArg.literal([for (final e in targets) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmMaintenanceWindowTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmMaintenanceWindowTarget>`.
  RefTo<AwsSsmMaintenanceWindowTarget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `owner_information` attribute.
  TfRef<String> get ownerInformation =>
      TfRef.attribute<String>(this, 'owner_information');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `window_id` attribute.
  TfRef<String> get windowId => TfRef.attribute<String>(this, 'window_id');
}
