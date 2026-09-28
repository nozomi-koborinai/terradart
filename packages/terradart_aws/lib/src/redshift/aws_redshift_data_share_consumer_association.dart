// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_data_share_consumer_association`.
const Set<String> _awsRedshiftDataShareConsumerAssociationSensitive =
    <String>{};

/// Exactly one of `associate_entire_account`, `consumer_arn`, `consumer_region` on `aws_redshift_data_share_consumer_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `associate_entire_account` (one of the [RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion] choices).
final class RedshiftDataShareConsumerAssociationAssociateEntireAccountOption
    extends
        RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationAssociateEntireAccountOption({
    required this.associateEntireAccount,
  });

  final TfArg<bool> associateEntireAccount;

  @override
  String get blockKey => 'associate_entire_account';

  @override
  Map<String, Object?> encode() => {
    'associate_entire_account': associateEntireAccount.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'associate_entire_account': associateEntireAccount,
  };
}

/// Sets `consumer_arn` (one of the [RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion] choices).
final class RedshiftDataShareConsumerAssociationConsumerArnOption
    extends
        RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationConsumerArnOption({
    required this.consumerArn,
  });

  final TfArg<String> consumerArn;

  @override
  String get blockKey => 'consumer_arn';

  @override
  Map<String, Object?> encode() => {'consumer_arn': consumerArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'consumer_arn': consumerArn};
}

/// Sets `consumer_region` (one of the [RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion] choices).
final class RedshiftDataShareConsumerAssociationConsumerRegionOption
    extends
        RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationConsumerRegionOption({
    required this.consumerRegion,
  });

  final TfArg<String> consumerRegion;

  @override
  String get blockKey => 'consumer_region';

  @override
  Map<String, Object?> encode() => {
    'consumer_region': consumerRegion.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'consumer_region': consumerRegion};
}

/// Factory wrapper for `aws_redshift_data_share_consumer_association`.
final class AwsRedshiftDataShareConsumerAssociation extends Resource {
  static const String tfType = 'aws_redshift_data_share_consumer_association';

  AwsRedshiftDataShareConsumerAssociation({
    required super.localName,
    TfArg<bool>? allowWrites,
    required RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion
    associateEntireAccountOrConsumerArnOrConsumerRegion,
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
           ...associateEntireAccountOrConsumerArnOrConsumerRegion.argMap,
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
