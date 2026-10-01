// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_data_share_authorization`.
const Set<String> _awsRedshiftDataShareAuthorizationSensitive = <String>{};

/// Factory wrapper for `aws_redshift_data_share_authorization`.
final class AwsRedshiftDataShareAuthorization extends Resource {
  static const String tfType = 'aws_redshift_data_share_authorization';

  AwsRedshiftDataShareAuthorization({
    required super.localName,
    TfArg<bool>? allowWrites,
    required TfArg<String> consumerIdentifier,
    required TfArg<String> dataShareArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_writes': ?allowWrites,
           'consumer_identifier': consumerIdentifier,
           'data_share_arn': dataShareArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftDataShareAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftDataShareAuthorization>`.
  RefTo<AwsRedshiftDataShareAuthorization> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_by` attribute.
  TfRef<String> get managedBy => TfRef.attribute<String>(this, 'managed_by');

  /// Reference to `producer_arn` attribute.
  TfRef<String> get producerArn =>
      TfRef.attribute<String>(this, 'producer_arn');

  /// Reference to `allow_writes` attribute.
  TfRef<bool> get allowWrites => TfRef.attribute<bool>(this, 'allow_writes');

  /// Reference to `consumer_identifier` attribute.
  TfRef<String> get consumerIdentifier =>
      TfRef.attribute<String>(this, 'consumer_identifier');

  /// Reference to `data_share_arn` attribute.
  TfRef<String> get dataShareArn =>
      TfRef.attribute<String>(this, 'data_share_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
