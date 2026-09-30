// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_storagegateway_gateway`.
const Set<String> _awsStoragegatewayGatewaySensitive = <String>{
  'smb_active_directory_settings.password',
  'smb_guest_password',
};

/// Storagegateway Gateway Gateway enum for `gateway_type`.
enum StoragegatewayGatewayGatewayType implements TerraformEnum {
  cached('CACHED'),
  fileFsxSmb('FILE_FSX_SMB'),
  fileS3('FILE_S3'),
  stored('STORED'),
  vtl('VTL'),
  vtlSnow('VTL_SNOW');

  const StoragegatewayGatewayGatewayType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Gateway Medium Changer enum for `medium_changer_type`.
enum StoragegatewayGatewayMediumChangerType implements TerraformEnum {
  awsGatewayVtl('AWS-Gateway-VTL'),
  ibm03584l320402('IBM-03584L32-0402'),
  stkL700('STK-L700');

  const StoragegatewayGatewayMediumChangerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Gateway Smb Security enum for `smb_security_strategy`.
enum StoragegatewayGatewaySmbSecurityStrategy implements TerraformEnum {
  clientspecified('ClientSpecified'),
  mandatorysigning('MandatorySigning'),
  mandatoryencryption('MandatoryEncryption'),
  mandatoryencryptionnoaes128('MandatoryEncryptionNoAes128');

  const StoragegatewayGatewaySmbSecurityStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Gateway Tape Drive enum for `tape_drive_type`.
enum StoragegatewayGatewayTapeDriveType implements TerraformEnum {
  ibmUlt3580Td5('IBM-ULT3580-TD5');

  const StoragegatewayGatewayTapeDriveType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `activation_key`, `gateway_ip_address` on `aws_storagegateway_gateway`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.activationKey(...)`.
sealed class StoragegatewayGatewayActivation {
  const StoragegatewayGatewayActivation();

  /// Sets `activation_key`.
  const factory StoragegatewayGatewayActivation.activationKey(
    TfArg<String> activationKey,
  ) = StoragegatewayGatewayActivationKey;

  /// Sets `gateway_ip_address`.
  const factory StoragegatewayGatewayActivation.gatewayIpAddress(
    TfArg<String> gatewayIpAddress,
  ) = StoragegatewayGatewayActivationGatewayIpAddress;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [StoragegatewayGatewayActivation.activationKey] choice: sets `activation_key`.
final class StoragegatewayGatewayActivationKey
    extends StoragegatewayGatewayActivation {
  const StoragegatewayGatewayActivationKey(this.activationKey);

  final TfArg<String> activationKey;

  @override
  String get blockKey => 'activation_key';

  @override
  Map<String, Object?> encode() => {'activation_key': activationKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'activation_key': activationKey};
}

/// The [StoragegatewayGatewayActivation.gatewayIpAddress] choice: sets `gateway_ip_address`.
final class StoragegatewayGatewayActivationGatewayIpAddress
    extends StoragegatewayGatewayActivation {
  const StoragegatewayGatewayActivationGatewayIpAddress(this.gatewayIpAddress);

  final TfArg<String> gatewayIpAddress;

  @override
  String get blockKey => 'gateway_ip_address';

  @override
  Map<String, Object?> encode() => {
    'gateway_ip_address': gatewayIpAddress.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gateway_ip_address': gatewayIpAddress,
  };
}

/// Typed helper for the `maintenance_start_time` block of
/// `aws_storagegateway_gateway` (derived from provider schema).
@immutable
final class StoragegatewayGatewayMaintenanceStartTime {
  const StoragegatewayGatewayMaintenanceStartTime({
    this.dayOfMonth,
    this.dayOfWeek,
    required this.hourOfDay,
    this.minuteOfHour,
  });

  final TfArg<String>? dayOfMonth;

  final TfArg<String>? dayOfWeek;

  final TfArg<num> hourOfDay;

  final TfArg<num>? minuteOfHour;

  Map<String, Object?> encode() => {
    'day_of_month': ?dayOfMonth?.toTfJson(),
    'day_of_week': ?dayOfWeek?.toTfJson(),
    'hour_of_day': hourOfDay.toTfJson(),
    'minute_of_hour': ?minuteOfHour?.toTfJson(),
  };
}

/// Typed helper for the `smb_active_directory_settings` block of
/// `aws_storagegateway_gateway` (derived from provider schema).
@immutable
final class StoragegatewayGatewaySmbActiveDirectorySettings {
  const StoragegatewayGatewaySmbActiveDirectorySettings({
    this.domainControllers,
    required this.domainName,
    this.organizationalUnit,
    required this.password,
    this.timeoutInSeconds,
    required this.username,
  });

  final TfArg<List<String>>? domainControllers;

  final TfArg<String> domainName;

  final TfArg<String>? organizationalUnit;

  final TfArg<String> password;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'domain_controllers': ?domainControllers?.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'organizational_unit': ?organizationalUnit?.toTfJson(),
    'password': password.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_storagegateway_gateway`.
final class AwsStoragegatewayGateway extends Resource {
  static const String tfType = 'aws_storagegateway_gateway';

  AwsStoragegatewayGateway({
    required super.localName,
    required StoragegatewayGatewayActivation activation,
    TfArg<num>? averageDownloadRateLimitInBitsPerSec,
    TfArg<num>? averageUploadRateLimitInBitsPerSec,
    RefTo<AwsCloudwatchLogGroup>? cloudwatchLogGroupArn,
    required TfArg<String> gatewayName,
    required TfArg<String> gatewayTimezone,
    TfArg<StoragegatewayGatewayGatewayType>? gatewayType,
    TfArg<String>? gatewayVpcEndpoint,
    TfArg<StoragegatewayGatewayMediumChangerType>? mediumChangerType,
    TfArg<String>? region,
    TfArg<bool>? smbFileShareVisibility,
    TfArg<String>? smbGuestPassword,
    TfArg<StoragegatewayGatewaySmbSecurityStrategy>? smbSecurityStrategy,
    TfArg<Map<String, String>>? tags,
    TfArg<StoragegatewayGatewayTapeDriveType>? tapeDriveType,
    StoragegatewayGatewayMaintenanceStartTime? maintenanceStartTime,
    StoragegatewayGatewaySmbActiveDirectorySettings? smbActiveDirectorySettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...activation.argMap,
           'average_download_rate_limit_in_bits_per_sec':
               ?averageDownloadRateLimitInBitsPerSec,
           'average_upload_rate_limit_in_bits_per_sec':
               ?averageUploadRateLimitInBitsPerSec,
           'cloudwatch_log_group_arn': ?cloudwatchLogGroupArn?.encodeAs('arn'),
           'gateway_name': gatewayName,
           'gateway_timezone': gatewayTimezone,
           'gateway_type': ?gatewayType,
           'gateway_vpc_endpoint': ?gatewayVpcEndpoint,
           'medium_changer_type': ?mediumChangerType,
           'region': ?region,
           'smb_file_share_visibility': ?smbFileShareVisibility,
           'smb_guest_password': ?smbGuestPassword,
           'smb_security_strategy': ?smbSecurityStrategy,
           'tags': ?tags,
           'tape_drive_type': ?tapeDriveType,
           if (maintenanceStartTime != null)
             'maintenance_start_time': TfArg.literal(
               maintenanceStartTime.encode(),
             ),
           if (smbActiveDirectorySettings != null)
             'smb_active_directory_settings': TfArg.literal(
               smbActiveDirectorySettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsStoragegatewayGateway>`.
  RefTo<AwsStoragegatewayGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ec2_instance_id` attribute.
  TfRef<String> get ec2InstanceId =>
      TfRef.attribute<String>(this, 'ec2_instance_id');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `gateway_network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get gatewayNetworkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'gateway_network_interface',
      );

  /// Reference to `host_environment` attribute.
  TfRef<String> get hostEnvironment =>
      TfRef.attribute<String>(this, 'host_environment');
}
