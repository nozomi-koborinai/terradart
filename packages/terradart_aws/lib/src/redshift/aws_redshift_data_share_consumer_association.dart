// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_data_share_consumer_association`.
const Set<String> _awsRedshiftDataShareConsumerAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_redshift_data_share_consumer_association`.
final class AwsRedshiftDataShareConsumerAssociation extends Resource {
  static const String tfType = 'aws_redshift_data_share_consumer_association';

  AwsRedshiftDataShareConsumerAssociation({
    required super.localName,
    TfArg<bool>? allowWrites,
    TfArg<bool>? associateEntireAccount,
    TfArg<String>? consumerArn,
    TfArg<String>? consumerRegion,
    required TfArg<String> dataShareArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowWrites != null) 'allow_writes': allowWrites,
           if (associateEntireAccount != null)
             'associate_entire_account': associateEntireAccount,
           if (consumerArn != null) 'consumer_arn': consumerArn,
           if (consumerRegion != null) 'consumer_region': consumerRegion,
           'data_share_arn': dataShareArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftDataShareConsumerAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_by` attribute.
  TfRef<String> get managedBy => TfRef.attribute<String>(this, 'managed_by');

  /// Reference to `producer_arn` attribute.
  TfRef<String> get producerArn =>
      TfRef.attribute<String>(this, 'producer_arn');
}
