// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_target_group_attachment`.
const Set<String> _awsVpclatticeTargetGroupAttachmentSensitive = <String>{};

/// Typed helper for the `target` block of
/// `aws_vpclattice_target_group_attachment` (derived from provider schema).
@immutable
final class VpclatticeTargetGroupAttachmentTarget {
  const VpclatticeTargetGroupAttachmentTarget({required this.id, this.port});

  final TfArg<String> id;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpclattice_target_group_attachment`.
final class AwsVpclatticeTargetGroupAttachment extends Resource {
  static const String tfType = 'aws_vpclattice_target_group_attachment';

  AwsVpclatticeTargetGroupAttachment({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> targetGroupIdentifier,
    required VpclatticeTargetGroupAttachmentTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'target_group_identifier': targetGroupIdentifier,
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeTargetGroupAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
