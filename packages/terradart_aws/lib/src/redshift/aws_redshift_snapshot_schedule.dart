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
sealed class RedshiftSnapshotScheduleIdentifier {
  const RedshiftSnapshotScheduleIdentifier();

  /// Sets `identifier`.
  const factory RedshiftSnapshotScheduleIdentifier.identifier(
    TfArg<String> identifier,
  ) = RedshiftSnapshotScheduleIdentifierIdentifier;

  /// Sets `identifier_prefix`.
  const factory RedshiftSnapshotScheduleIdentifier.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = RedshiftSnapshotScheduleIdentifierIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftSnapshotScheduleIdentifier.identifier] choice: sets `identifier`.
final class RedshiftSnapshotScheduleIdentifierIdentifier
    extends RedshiftSnapshotScheduleIdentifier {
  const RedshiftSnapshotScheduleIdentifierIdentifier(this.identifier);

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [RedshiftSnapshotScheduleIdentifier.identifierPrefix] choice: sets `identifier_prefix`.
final class RedshiftSnapshotScheduleIdentifierIdentifierPrefix
    extends RedshiftSnapshotScheduleIdentifier {
  const RedshiftSnapshotScheduleIdentifierIdentifierPrefix(
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
    RedshiftSnapshotScheduleIdentifier? identifier,
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
           'description': ?description,
           'force_destroy': ?forceDestroy,
           ...?identifier?.argMap,
           'region': ?region,
           'tags': ?tags,
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
