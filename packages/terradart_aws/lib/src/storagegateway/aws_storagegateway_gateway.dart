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

/// Storagegateway Gateway enum for `gateway_type`.
extension type const StoragegatewayGatewayType._(TfArg<String> _)
    implements TfArg<String> {
  StoragegatewayGatewayType.variable(String name)
    : this._(TfArg.variable(name));
  StoragegatewayGatewayType.expression(String template)
    : this._(TfArg.expression(template));
  const StoragegatewayGatewayType.arg(TfArg<String> arg) : this._(arg);

  static const cached = StoragegatewayGatewayType._(TfArgLiteral('CACHED'));
  static const fileFsxSmb = StoragegatewayGatewayType._(
    TfArgLiteral('FILE_FSX_SMB'),
  );
  static const fileS3 = StoragegatewayGatewayType._(TfArgLiteral('FILE_S3'));
  static const stored = StoragegatewayGatewayType._(TfArgLiteral('STORED'));
  static const vtl = StoragegatewayGatewayType._(TfArgLiteral('VTL'));
  static const vtlSnow = StoragegatewayGatewayType._(TfArgLiteral('VTL_SNOW'));

  static const List<StoragegatewayGatewayType> values = [
    cached,
    fileFsxSmb,
    fileS3,
    stored,
    vtl,
    vtlSnow,
  ];
}

/// Storagegateway Gateway Medium Changer enum for `medium_changer_type`.
extension type const StoragegatewayGatewayMediumChangerType._(TfArg<String> _)
    implements TfArg<String> {
  StoragegatewayGatewayMediumChangerType.variable(String name)
    : this._(TfArg.variable(name));
  StoragegatewayGatewayMediumChangerType.expression(String template)
    : this._(TfArg.expression(template));
  const StoragegatewayGatewayMediumChangerType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsGatewayVtl = StoragegatewayGatewayMediumChangerType._(
    TfArgLiteral('AWS-Gateway-VTL'),
  );
  static const ibm03584l320402 = StoragegatewayGatewayMediumChangerType._(
    TfArgLiteral('IBM-03584L32-0402'),
  );
  static const stkL700 = StoragegatewayGatewayMediumChangerType._(
    TfArgLiteral('STK-L700'),
  );

  static const List<StoragegatewayGatewayMediumChangerType> values = [
    awsGatewayVtl,
    ibm03584l320402,
    stkL700,
  ];
}

/// Storagegateway Gateway Smb Security enum for `smb_security_strategy`.
extension type const StoragegatewayGatewaySmbSecurityStrategy._(TfArg<String> _)
    implements TfArg<String> {
  StoragegatewayGatewaySmbSecurityStrategy.variable(String name)
    : this._(TfArg.variable(name));
  StoragegatewayGatewaySmbSecurityStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const StoragegatewayGatewaySmbSecurityStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const clientspecified = StoragegatewayGatewaySmbSecurityStrategy._(
    TfArgLiteral('ClientSpecified'),
  );
  static const mandatorysigning = StoragegatewayGatewaySmbSecurityStrategy._(
    TfArgLiteral('MandatorySigning'),
  );
  static const mandatoryencryption = StoragegatewayGatewaySmbSecurityStrategy._(
    TfArgLiteral('MandatoryEncryption'),
  );
  static const mandatoryencryptionnoaes128 =
      StoragegatewayGatewaySmbSecurityStrategy._(
        TfArgLiteral('MandatoryEncryptionNoAes128'),
      );

  static const List<StoragegatewayGatewaySmbSecurityStrategy> values = [
    clientspecified,
    mandatorysigning,
    mandatoryencryption,
    mandatoryencryptionnoaes128,
  ];
}

/// Storagegateway Gateway Tape Drive enum for `tape_drive_type`.
extension type const StoragegatewayGatewayTapeDriveType._(TfArg<String> _)
    implements TfArg<String> {
  StoragegatewayGatewayTapeDriveType.variable(String name)
    : this._(TfArg.variable(name));
  StoragegatewayGatewayTapeDriveType.expression(String template)
    : this._(TfArg.expression(template));
  const StoragegatewayGatewayTapeDriveType.arg(TfArg<String> arg) : this._(arg);

  static const ibmUlt3580Td5 = StoragegatewayGatewayTapeDriveType._(
    TfArgLiteral('IBM-ULT3580-TD5'),
  );

  static const List<StoragegatewayGatewayTapeDriveType> values = [
    ibmUlt3580Td5,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [StoragegatewayGatewayActivation.activationKey] choice: sets `activation_key`.
final class StoragegatewayGatewayActivationKey
    extends StoragegatewayGatewayActivation {
  const StoragegatewayGatewayActivationKey(this.activationKey);

  final TfArg<String> activationKey;

  @internal
  @override
  String get blockKey => 'activation_key';

  @internal
  @override
  Map<String, Object?> encode() => {'activation_key': activationKey.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'activation_key': activationKey};
}

/// The [StoragegatewayGatewayActivation.gatewayIpAddress] choice: sets `gateway_ip_address`.
final class StoragegatewayGatewayActivationGatewayIpAddress
    extends StoragegatewayGatewayActivation {
  const StoragegatewayGatewayActivationGatewayIpAddress(this.gatewayIpAddress);

  final TfArg<String> gatewayIpAddress;

  @internal
  @override
  String get blockKey => 'gateway_ip_address';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gateway_ip_address': gatewayIpAddress.toTfJson(),
  };

  @internal
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

  @internal
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

  final Sensitive<String> password;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<String> username;

  @internal
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

  AwsStoragegatewayGateway(
    super.localName, {
    required StoragegatewayGatewayActivation activation,
    TfArg<num>? averageDownloadRateLimitInBitsPerSec,
    TfArg<num>? averageUploadRateLimitInBitsPerSec,
    RefTo<AwsCloudwatchLogGroup>? cloudwatchLogGroupArn,
    required TfArg<String> gatewayName,
    required TfArg<String> gatewayTimezone,
    StoragegatewayGatewayType? gatewayType,
    TfArg<String>? gatewayVpcEndpoint,
    StoragegatewayGatewayMediumChangerType? mediumChangerType,
    TfArg<String>? region,
    TfArg<bool>? smbFileShareVisibility,
    Sensitive<String>? smbGuestPassword,
    StoragegatewayGatewaySmbSecurityStrategy? smbSecurityStrategy,
    TfArg<Map<String, String>>? tags,
    StoragegatewayGatewayTapeDriveType? tapeDriveType,
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

  /// Reference to `activation_key` attribute.
  TfRef<String> get activationKey =>
      TfRef.attribute<String>(this, 'activation_key');

  /// Reference to `average_download_rate_limit_in_bits_per_sec` attribute.
  TfRef<num> get averageDownloadRateLimitInBitsPerSec =>
      TfRef.attribute<num>(this, 'average_download_rate_limit_in_bits_per_sec');

  /// Reference to `average_upload_rate_limit_in_bits_per_sec` attribute.
  TfRef<num> get averageUploadRateLimitInBitsPerSec =>
      TfRef.attribute<num>(this, 'average_upload_rate_limit_in_bits_per_sec');

  /// Reference to `cloudwatch_log_group_arn` attribute.
  TfRef<String> get cloudwatchLogGroupArn =>
      TfRef.attribute<String>(this, 'cloudwatch_log_group_arn');

  /// Reference to `gateway_ip_address` attribute.
  TfRef<String> get gatewayIpAddress =>
      TfRef.attribute<String>(this, 'gateway_ip_address');

  /// Reference to `gateway_name` attribute.
  TfRef<String> get gatewayName =>
      TfRef.attribute<String>(this, 'gateway_name');

  /// Reference to `gateway_timezone` attribute.
  TfRef<String> get gatewayTimezone =>
      TfRef.attribute<String>(this, 'gateway_timezone');

  /// Reference to `gateway_type` attribute.
  TfRef<String> get gatewayType =>
      TfRef.attribute<String>(this, 'gateway_type');

  /// Reference to `gateway_vpc_endpoint` attribute.
  TfRef<String> get gatewayVpcEndpoint =>
      TfRef.attribute<String>(this, 'gateway_vpc_endpoint');

  /// Reference to `medium_changer_type` attribute.
  TfRef<String> get mediumChangerType =>
      TfRef.attribute<String>(this, 'medium_changer_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `smb_file_share_visibility` attribute.
  TfRef<bool> get smbFileShareVisibility =>
      TfRef.attribute<bool>(this, 'smb_file_share_visibility');

  /// Reference to `smb_guest_password` attribute.
  TfRef<String> get smbGuestPassword =>
      TfRef.attribute<String>(this, 'smb_guest_password');

  /// Reference to `smb_security_strategy` attribute.
  TfRef<String> get smbSecurityStrategy =>
      TfRef.attribute<String>(this, 'smb_security_strategy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tape_drive_type` attribute.
  TfRef<String> get tapeDriveType =>
      TfRef.attribute<String>(this, 'tape_drive_type');
}
