// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_dataview`.
const Set<String> _awsFinspaceKxDataviewSensitive = <String>{};

/// Finspace Kx Dataview Az enum for `az_mode`.
extension type const FinspaceKxDataviewAzMode._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxDataviewAzMode.variable(String name) : this._(TfArg.variable(name));
  FinspaceKxDataviewAzMode.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxDataviewAzMode.arg(TfArg<String> arg) : this._(arg);

  static const single = FinspaceKxDataviewAzMode._(TfArgLiteral('SINGLE'));
  static const multi = FinspaceKxDataviewAzMode._(TfArgLiteral('MULTI'));

  static const List<FinspaceKxDataviewAzMode> values = [single, multi];
}

/// Typed helper for the `segment_configurations` block of
/// `aws_finspace_kx_dataview` (derived from provider schema).
@immutable
final class FinspaceKxDataviewSegmentConfigurations {
  const FinspaceKxDataviewSegmentConfigurations({
    required this.dbPaths,
    this.onDemand,
    required this.volumeName,
  });

  final TfArg<List<String>> dbPaths;

  final TfArg<bool>? onDemand;

  final TfArg<String> volumeName;

  @internal
  Map<String, Object?> encode() => {
    'db_paths': dbPaths.toTfJson(),
    'on_demand': ?onDemand?.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// Factory wrapper for `aws_finspace_kx_dataview`.
final class AwsFinspaceKxDataview extends Resource {
  static const String tfType = 'aws_finspace_kx_dataview';

  AwsFinspaceKxDataview(
    super.localName, {
    required TfArg<bool> autoUpdate,
    TfArg<String>? availabilityZoneId,
    required FinspaceKxDataviewAzMode azMode,
    TfArg<String>? changesetId,
    required TfArg<String> databaseName,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    required TfArg<String> name,
    TfArg<bool>? readWrite,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<FinspaceKxDataviewSegmentConfigurations>? segmentConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_update': autoUpdate,
           'availability_zone_id': ?availabilityZoneId,
           'az_mode': azMode,
           'changeset_id': ?changesetId,
           'database_name': databaseName,
           'description': ?description,
           'environment_id': environmentId,
           'name': name,
           'read_write': ?readWrite,
           'region': ?region,
           'tags': ?tags,
           if (segmentConfigurations != null)
             'segment_configurations': TfArg.literal([
               for (final e in segmentConfigurations) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxDataviewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFinspaceKxDataview>`.
  RefTo<AwsFinspaceKxDataview> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `auto_update` attribute.
  TfRef<bool> get autoUpdate => TfRef.attribute<bool>(this, 'auto_update');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `az_mode` attribute.
  TfRef<String> get azMode => TfRef.attribute<String>(this, 'az_mode');

  /// Reference to `changeset_id` attribute.
  TfRef<String> get changesetId =>
      TfRef.attribute<String>(this, 'changeset_id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `read_write` attribute.
  TfRef<bool> get readWrite => TfRef.attribute<bool>(this, 'read_write');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
