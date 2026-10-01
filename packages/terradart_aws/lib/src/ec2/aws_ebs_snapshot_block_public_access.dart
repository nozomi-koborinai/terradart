// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_snapshot_block_public_access`.
const Set<String> _awsEbsSnapshotBlockPublicAccessSensitive = <String>{};

/// Ebs Snapshot Block Public Access enum for `state`.
extension type const EbsSnapshotBlockPublicAccessState._(TfArg<String> _)
    implements TfArg<String> {
  EbsSnapshotBlockPublicAccessState.variable(String name)
    : this._(TfArg.variable(name));
  EbsSnapshotBlockPublicAccessState.expression(String template)
    : this._(TfArg.expression(template));
  const EbsSnapshotBlockPublicAccessState.arg(TfArg<String> arg) : this._(arg);

  static const blockAllSharing = EbsSnapshotBlockPublicAccessState._(
    TfArgLiteral('block-all-sharing'),
  );
  static const blockNewSharing = EbsSnapshotBlockPublicAccessState._(
    TfArgLiteral('block-new-sharing'),
  );
  static const unblocked = EbsSnapshotBlockPublicAccessState._(
    TfArgLiteral('unblocked'),
  );

  static const List<EbsSnapshotBlockPublicAccessState> values = [
    blockAllSharing,
    blockNewSharing,
    unblocked,
  ];
}

/// Factory wrapper for `aws_ebs_snapshot_block_public_access`.
final class AwsEbsSnapshotBlockPublicAccess extends Resource {
  static const String tfType = 'aws_ebs_snapshot_block_public_access';

  AwsEbsSnapshotBlockPublicAccess(
    super.localName, {
    TfArg<String>? region,
    required EbsSnapshotBlockPublicAccessState state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'state': state},
       );

  @override
  Set<String> get sensitiveFields => _awsEbsSnapshotBlockPublicAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsSnapshotBlockPublicAccess>`.
  RefTo<AwsEbsSnapshotBlockPublicAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
