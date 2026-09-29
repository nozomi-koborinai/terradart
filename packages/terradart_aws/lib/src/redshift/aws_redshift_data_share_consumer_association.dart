// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_data_share_consumer_association`.
const Set<String> _awsRedshiftDataShareConsumerAssociationSensitive =
    <String>{};

/// Exactly one of `associate_entire_account`, `consumer_arn`, `consumer_region` on `aws_redshift_data_share_consumer_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.associateEntireAccount(...)`.
sealed class RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion();

  /// Sets `associate_entire_account`.
  const factory RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion.associateEntireAccount(
    TfArg<bool> associateEntireAccount,
  ) = RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionAssociateEntireAccount;

  /// Sets `consumer_arn`.
  const factory RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion.consumerArn(
    TfArg<String> consumerArn,
  ) = RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionConsumerArn;

  /// Sets `consumer_region`.
  const factory RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion.consumerRegion(
    TfArg<String> consumerRegion,
  ) = RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionConsumerRegion;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion.associateEntireAccount] choice: sets `associate_entire_account`.
final class RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionAssociateEntireAccount
    extends
        RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionAssociateEntireAccount(
    this.associateEntireAccount,
  );

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

/// The [RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion.consumerArn] choice: sets `consumer_arn`.
final class RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionConsumerArn
    extends
        RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionConsumerArn(
    this.consumerArn,
  );

  final TfArg<String> consumerArn;

  @override
  String get blockKey => 'consumer_arn';

  @override
  Map<String, Object?> encode() => {'consumer_arn': consumerArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'consumer_arn': consumerArn};
}

/// The [RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion.consumerRegion] choice: sets `consumer_region`.
final class RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionConsumerRegion
    extends
        RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegion {
  const RedshiftDataShareConsumerAssociationAssociateEntireAccountOrConsumerArnOrConsumerRegionConsumerRegion(
    this.consumerRegion,
  );

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
