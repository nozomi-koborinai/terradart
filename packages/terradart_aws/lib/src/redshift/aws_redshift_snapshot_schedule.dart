// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_snapshot_schedule`.
const Set<String> _awsRedshiftSnapshotScheduleSensitive = <String>{};

/// At most one of `identifier`, `identifier_prefix` on `aws_redshift_snapshot_schedule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.identifier(...)`.
sealed class RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix {
  const RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix();

  /// Sets `identifier`.
  const factory RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix.identifier(
    TfArg<String> identifier,
  ) = RedshiftSnapshotScheduleIdentifierOrIdentifierPrefixIdentifier;

  /// Sets `identifier_prefix`.
  const factory RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = RedshiftSnapshotScheduleIdentifierOrIdentifierPrefixIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix.identifier] choice: sets `identifier`.
final class RedshiftSnapshotScheduleIdentifierOrIdentifierPrefixIdentifier
    extends RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix {
  const RedshiftSnapshotScheduleIdentifierOrIdentifierPrefixIdentifier(
    this.identifier,
  );

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix.identifierPrefix] choice: sets `identifier_prefix`.
final class RedshiftSnapshotScheduleIdentifierOrIdentifierPrefixIdentifierPrefix
    extends RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix {
  const RedshiftSnapshotScheduleIdentifierOrIdentifierPrefixIdentifierPrefix(
    this.identifierPrefix,
  );

  final TfArg<String> identifierPrefix;

  @override
  String get blockKey => 'identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'identifier_prefix': identifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'identifier_prefix': identifierPrefix,
  };
}

/// Factory wrapper for `aws_redshift_snapshot_schedule`.
final class AwsRedshiftSnapshotSchedule extends Resource {
  static const String tfType = 'aws_redshift_snapshot_schedule';

  AwsRedshiftSnapshotSchedule({
    required super.localName,
    required TfArg<List<String>> definitions,
    TfArg<String>? description,
    TfArg<bool>? forceDestroy,
    RedshiftSnapshotScheduleIdentifierOrIdentifierPrefix?
    identifierOrIdentifierPrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'definitions': definitions,
           if (description != null) 'description': description,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           ...?identifierOrIdentifierPrefix?.argMap,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftSnapshotScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftSnapshotSchedule>`.
  RefTo<AwsRedshiftSnapshotSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
