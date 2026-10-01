// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_volume`.
const Set<String> _awsFinspaceKxVolumeSensitive = <String>{};

/// Finspace Kx Volume Az enum for `az_mode`.
extension type const FinspaceKxVolumeAzMode._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxVolumeAzMode.variable(String name) : this._(TfArg.variable(name));
  FinspaceKxVolumeAzMode.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxVolumeAzMode.arg(TfArg<String> arg) : this._(arg);

  static const single = FinspaceKxVolumeAzMode._(TfArgLiteral('SINGLE'));
  static const multi = FinspaceKxVolumeAzMode._(TfArgLiteral('MULTI'));

  static const List<FinspaceKxVolumeAzMode> values = [single, multi];
}

/// Finspace Kx Volume enum for `type`.
extension type const FinspaceKxVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxVolumeType.variable(String name) : this._(TfArg.variable(name));
  FinspaceKxVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const nas1 = FinspaceKxVolumeType._(TfArgLiteral('NAS_1'));

  static const List<FinspaceKxVolumeType> values = [nas1];
}

/// Typed helper for the `nas1_configuration` block of
/// `aws_finspace_kx_volume` (derived from provider schema).
@immutable
final class FinspaceKxVolumeNas1Configuration {
  const FinspaceKxVolumeNas1Configuration({
    required this.size,
    required this.type,
  });

  final TfArg<num> size;

  final FinspaceKxVolumeNas1ConfigurationType type;

  @internal
  Map<String, Object?> encode() => {
    'size': size.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FinspaceKxVolumeNas1ConfigurationType._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxVolumeNas1ConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  FinspaceKxVolumeNas1ConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxVolumeNas1ConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const ssd1000 = FinspaceKxVolumeNas1ConfigurationType._(
    TfArgLiteral('SSD_1000'),
  );
  static const ssd250 = FinspaceKxVolumeNas1ConfigurationType._(
    TfArgLiteral('SSD_250'),
  );
  static const hdd12 = FinspaceKxVolumeNas1ConfigurationType._(
    TfArgLiteral('HDD_12'),
  );

  static const List<FinspaceKxVolumeNas1ConfigurationType> values = [
    ssd1000,
    ssd250,
    hdd12,
  ];
}

/// Factory wrapper for `aws_finspace_kx_volume`.
final class AwsFinspaceKxVolume extends Resource {
  static const String tfType = 'aws_finspace_kx_volume';

  AwsFinspaceKxVolume(
    super.localName, {
    required TfArg<List<String>> availabilityZones,
    required FinspaceKxVolumeAzMode azMode,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required FinspaceKxVolumeType type,
    List<FinspaceKxVolumeNas1Configuration>? nas1Configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zones': availabilityZones,
           'az_mode': azMode,
           'description': ?description,
           'environment_id': environmentId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'type': type,
           if (nas1Configuration != null)
             'nas1_configuration': TfArg.literal([
               for (final e in nas1Configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFinspaceKxVolume>`.
  RefTo<AwsFinspaceKxVolume> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attached_clusters` attribute.
  TfRef<List<Map<String, Object?>>> get attachedClusters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attached_clusters');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `az_mode` attribute.
  TfRef<String> get azMode => TfRef.attribute<String>(this, 'az_mode');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
