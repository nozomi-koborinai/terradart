// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudhsm_v2_hsm`.
const Set<String> _awsCloudhsmV2HsmSensitive = <String>{};

/// Exactly one of `availability_zone`, `subnet_id` on `aws_cloudhsm_v2_hsm`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.availabilityZone(...)`.
sealed class CloudhsmV2HsmPlacement {
  const CloudhsmV2HsmPlacement();

  /// Sets `availability_zone`.
  const factory CloudhsmV2HsmPlacement.availabilityZone(
    TfArg<String> availabilityZone,
  ) = CloudhsmV2HsmPlacementAvailabilityZone;

  /// Sets `subnet_id`.
  const factory CloudhsmV2HsmPlacement.subnetId(TfArg<String> subnetId) =
      CloudhsmV2HsmPlacementSubnetId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudhsmV2HsmPlacement.availabilityZone] choice: sets `availability_zone`.
final class CloudhsmV2HsmPlacementAvailabilityZone
    extends CloudhsmV2HsmPlacement {
  const CloudhsmV2HsmPlacementAvailabilityZone(this.availabilityZone);

  final TfArg<String> availabilityZone;

  @override
  String get blockKey => 'availability_zone';

  @override
  Map<String, Object?> encode() => {
    'availability_zone': availabilityZone.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_zone': availabilityZone,
  };
}

/// The [CloudhsmV2HsmPlacement.subnetId] choice: sets `subnet_id`.
final class CloudhsmV2HsmPlacementSubnetId extends CloudhsmV2HsmPlacement {
  const CloudhsmV2HsmPlacementSubnetId(this.subnetId);

  final TfArg<String> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnet_id': subnetId};
}

/// Factory wrapper for `aws_cloudhsm_v2_hsm`.
final class AwsCloudhsmV2Hsm extends Resource {
  static const String tfType = 'aws_cloudhsm_v2_hsm';

  AwsCloudhsmV2Hsm({
    required super.localName,
    required CloudhsmV2HsmPlacement placement,
    required TfArg<String> clusterId,
    TfArg<String>? ipAddress,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...placement.argMap,
           'cluster_id': clusterId,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudhsmV2HsmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudhsmV2Hsm>`.
  RefTo<AwsCloudhsmV2Hsm> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hsm_eni_id` attribute.
  TfRef<String> get hsmEniId => TfRef.attribute<String>(this, 'hsm_eni_id');

  /// Reference to `hsm_id` attribute.
  TfRef<String> get hsmId => TfRef.attribute<String>(this, 'hsm_id');

  /// Reference to `hsm_state` attribute.
  TfRef<String> get hsmState => TfRef.attribute<String>(this, 'hsm_state');
}
