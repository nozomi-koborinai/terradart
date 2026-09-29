// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_volume`.
const Set<String> _awsFinspaceKxVolumeSensitive = <String>{};

/// Finspace Kx Volume Az enum for `az_mode`.
enum FinspaceKxVolumeAzMode implements TerraformEnum {
  single('SINGLE'),
  multi('MULTI');

  const FinspaceKxVolumeAzMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Finspace Kx Volume enum for `type`.
enum FinspaceKxVolumeType implements TerraformEnum {
  nas1('NAS_1');

  const FinspaceKxVolumeType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<FinspaceKxVolumeNas1ConfigurationType> type;

  Map<String, Object?> encode() => {
    'size': size.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum FinspaceKxVolumeNas1ConfigurationType implements TerraformEnum {
  ssd1000('SSD_1000'),
  ssd250('SSD_250'),
  hdd12('HDD_12');

  const FinspaceKxVolumeNas1ConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_finspace_kx_volume`.
final class AwsFinspaceKxVolume extends Resource {
  static const String tfType = 'aws_finspace_kx_volume';

  AwsFinspaceKxVolume({
    required super.localName,
    required TfArg<List<String>> availabilityZones,
    required TfArg<FinspaceKxVolumeAzMode> azMode,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<FinspaceKxVolumeType> type,
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
           if (description != null) 'description': description,
           'environment_id': environmentId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
