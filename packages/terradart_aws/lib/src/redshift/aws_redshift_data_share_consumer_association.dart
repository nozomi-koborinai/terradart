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
sealed class RedshiftDataShareConsumerAssociationConsumer {
  const RedshiftDataShareConsumerAssociationConsumer();

  /// Sets `associate_entire_account`.
  const factory RedshiftDataShareConsumerAssociationConsumer.associateEntireAccount(
    TfArg<bool> associateEntireAccount,
  ) = RedshiftDataShareConsumerAssociationConsumerAssociateEntireAccount;

  /// Sets `consumer_arn`.
  const factory RedshiftDataShareConsumerAssociationConsumer.consumerArn(
    TfArg<String> consumerArn,
  ) = RedshiftDataShareConsumerAssociationConsumerConsumerArn;

  /// Sets `consumer_region`.
  const factory RedshiftDataShareConsumerAssociationConsumer.consumerRegion(
    TfArg<String> consumerRegion,
  ) = RedshiftDataShareConsumerAssociationConsumerConsumerRegion;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftDataShareConsumerAssociationConsumer.associateEntireAccount] choice: sets `associate_entire_account`.
final class RedshiftDataShareConsumerAssociationConsumerAssociateEntireAccount
    extends RedshiftDataShareConsumerAssociationConsumer {
  const RedshiftDataShareConsumerAssociationConsumerAssociateEntireAccount(
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

/// The [RedshiftDataShareConsumerAssociationConsumer.consumerArn] choice: sets `consumer_arn`.
final class RedshiftDataShareConsumerAssociationConsumerConsumerArn
    extends RedshiftDataShareConsumerAssociationConsumer {
  const RedshiftDataShareConsumerAssociationConsumerConsumerArn(
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

/// The [RedshiftDataShareConsumerAssociationConsumer.consumerRegion] choice: sets `consumer_region`.
final class RedshiftDataShareConsumerAssociationConsumerConsumerRegion
    extends RedshiftDataShareConsumerAssociationConsumer {
  const RedshiftDataShareConsumerAssociationConsumerConsumerRegion(
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
    required RedshiftDataShareConsumerAssociationConsumer consumer,
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
           ...consumer.argMap,
           'data_share_arn': dataShareArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRedshiftDataShareConsumerAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftDataShareConsumerAssociation>`.
  RefTo<AwsRedshiftDataShareConsumerAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_by` attribute.
  TfRef<String> get managedBy => TfRef.attribute<String>(this, 'managed_by');

  /// Reference to `producer_arn` attribute.
  TfRef<String> get producerArn =>
      TfRef.attribute<String>(this, 'producer_arn');
}
