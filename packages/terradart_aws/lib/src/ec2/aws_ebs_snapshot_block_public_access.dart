// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_snapshot_block_public_access`.
const Set<String> _awsEbsSnapshotBlockPublicAccessSensitive = <String>{};

/// Ebs Snapshot Block Public Access enum for `state`.
enum EbsSnapshotBlockPublicAccessState implements TerraformEnum {
  blockAllSharing('block-all-sharing'),
  blockNewSharing('block-new-sharing'),
  unblocked('unblocked');

  const EbsSnapshotBlockPublicAccessState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ebs_snapshot_block_public_access`.
final class AwsEbsSnapshotBlockPublicAccess extends Resource {
  static const String tfType = 'aws_ebs_snapshot_block_public_access';

  AwsEbsSnapshotBlockPublicAccess({
    required super.localName,
    TfArg<String>? region,
    required TfArg<EbsSnapshotBlockPublicAccessState> state,
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
