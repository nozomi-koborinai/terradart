// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_gateway`.
const Set<String> _awsStoragegatewayGatewaySensitive = <String>{
  'smb_active_directory_settings.password',
  'smb_guest_password',
};

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
    if (dayOfMonth != null) 'day_of_month': dayOfMonth!.toTfJson(),
    if (dayOfWeek != null) 'day_of_week': dayOfWeek!.toTfJson(),
    'hour_of_day': hourOfDay.toTfJson(),
    if (minuteOfHour != null) 'minute_of_hour': minuteOfHour!.toTfJson(),
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

  final TfArg<List<Object?>>? domainControllers;

  final TfArg<String> domainName;

  final TfArg<String>? organizationalUnit;

  final TfArg<String> password;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    if (domainControllers != null)
      'domain_controllers': domainControllers!.toTfJson(),
    'domain_name': domainName.toTfJson(),
    if (organizationalUnit != null)
      'organizational_unit': organizationalUnit!.toTfJson(),
    'password': password.toTfJson(),
    if (timeoutInSeconds != null)
      'timeout_in_seconds': timeoutInSeconds!.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_storagegateway_gateway`.
final class AwsStoragegatewayGateway extends Resource {
  static const String tfType = 'aws_storagegateway_gateway';

  AwsStoragegatewayGateway({
    required super.localName,
    TfArg<String>? activationKey,
    TfArg<num>? averageDownloadRateLimitInBitsPerSec,
    TfArg<num>? averageUploadRateLimitInBitsPerSec,
    TfArg<String>? cloudwatchLogGroupArn,
    TfArg<String>? gatewayIpAddress,
    required TfArg<String> gatewayName,
    required TfArg<String> gatewayTimezone,
    TfArg<String>? gatewayType,
    TfArg<String>? gatewayVpcEndpoint,
    TfArg<String>? mediumChangerType,
    TfArg<String>? region,
    TfArg<bool>? smbFileShareVisibility,
    TfArg<String>? smbGuestPassword,
    TfArg<String>? smbSecurityStrategy,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tapeDriveType,
    StoragegatewayGatewayMaintenanceStartTime? maintenanceStartTime,
    StoragegatewayGatewaySmbActiveDirectorySettings? smbActiveDirectorySettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (activationKey != null) 'activation_key': activationKey,
           if (averageDownloadRateLimitInBitsPerSec != null)
             'average_download_rate_limit_in_bits_per_sec':
                 averageDownloadRateLimitInBitsPerSec,
           if (averageUploadRateLimitInBitsPerSec != null)
             'average_upload_rate_limit_in_bits_per_sec':
                 averageUploadRateLimitInBitsPerSec,
           if (cloudwatchLogGroupArn != null)
             'cloudwatch_log_group_arn': cloudwatchLogGroupArn,
           if (gatewayIpAddress != null) 'gateway_ip_address': gatewayIpAddress,
           'gateway_name': gatewayName,
           'gateway_timezone': gatewayTimezone,
           if (gatewayType != null) 'gateway_type': gatewayType,
           if (gatewayVpcEndpoint != null)
             'gateway_vpc_endpoint': gatewayVpcEndpoint,
           if (mediumChangerType != null)
             'medium_changer_type': mediumChangerType,
           if (region != null) 'region': region,
           if (smbFileShareVisibility != null)
             'smb_file_share_visibility': smbFileShareVisibility,
           if (smbGuestPassword != null) 'smb_guest_password': smbGuestPassword,
           if (smbSecurityStrategy != null)
             'smb_security_strategy': smbSecurityStrategy,
           if (tags != null) 'tags': tags,
           if (tapeDriveType != null) 'tape_drive_type': tapeDriveType,
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
