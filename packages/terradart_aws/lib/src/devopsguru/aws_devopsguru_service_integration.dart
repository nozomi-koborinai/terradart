// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_devopsguru_service_integration`.
const Set<String> _awsDevopsguruServiceIntegrationSensitive = <String>{};

/// Typed helper for the `kms_server_side_encryption` block of
/// `aws_devopsguru_service_integration` (derived from provider schema).
@immutable
final class DevopsguruServiceIntegrationKmsServerSideEncryption {
  const DevopsguruServiceIntegrationKmsServerSideEncryption({
    this.kmsKeyId,
    this.optInStatus,
    this.type,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<DevopsguruServiceIntegrationOptInStatus>? optInStatus;

  final TfArg<DevopsguruServiceIntegrationType>? type;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'opt_in_status': ?optInStatus?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `opt_in_status` — derived from the provider schema description.
enum DevopsguruServiceIntegrationOptInStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DevopsguruServiceIntegrationOptInStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum DevopsguruServiceIntegrationType implements TerraformEnum {
  customerManagedKey('CUSTOMER_MANAGED_KEY'),
  awsOwnedKmsKey('AWS_OWNED_KMS_KEY');

  const DevopsguruServiceIntegrationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `logs_anomaly_detection` block of
/// `aws_devopsguru_service_integration` (derived from provider schema).
@immutable
final class DevopsguruServiceIntegrationLogsAnomalyDetection {
  const DevopsguruServiceIntegrationLogsAnomalyDetection({this.optInStatus});

  final TfArg<DevopsguruServiceIntegrationOptInStatus>? optInStatus;

  Map<String, Object?> encode() => {'opt_in_status': ?optInStatus?.toTfJson()};
}

/// Typed helper for the `ops_center` block of
/// `aws_devopsguru_service_integration` (derived from provider schema).
@immutable
final class DevopsguruServiceIntegrationOpsCenter {
  const DevopsguruServiceIntegrationOpsCenter({this.optInStatus});

  final TfArg<DevopsguruServiceIntegrationOptInStatus>? optInStatus;

  Map<String, Object?> encode() => {'opt_in_status': ?optInStatus?.toTfJson()};
}

/// Factory wrapper for `aws_devopsguru_service_integration`.
final class AwsDevopsguruServiceIntegration extends Resource {
  static const String tfType = 'aws_devopsguru_service_integration';

  AwsDevopsguruServiceIntegration(
    super.localName, {
    TfArg<String>? region,
    List<DevopsguruServiceIntegrationKmsServerSideEncryption>?
    kmsServerSideEncryption,
    List<DevopsguruServiceIntegrationLogsAnomalyDetection>?
    logsAnomalyDetection,
    List<DevopsguruServiceIntegrationOpsCenter>? opsCenter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (kmsServerSideEncryption != null)
             'kms_server_side_encryption': TfArg.literal([
               for (final e in kmsServerSideEncryption) e.encode(),
             ]),
           if (logsAnomalyDetection != null)
             'logs_anomaly_detection': TfArg.literal([
               for (final e in logsAnomalyDetection) e.encode(),
             ]),
           if (opsCenter != null)
             'ops_center': TfArg.literal([
               for (final e in opsCenter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruServiceIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevopsguruServiceIntegration>`.
  RefTo<AwsDevopsguruServiceIntegration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
