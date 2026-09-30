// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_resource_share_associations_exclusive`.
const Set<String> _awsRamResourceShareAssociationsExclusiveSensitive =
    <String>{};

/// Factory wrapper for `aws_ram_resource_share_associations_exclusive`.
final class AwsRamResourceShareAssociationsExclusive extends Resource {
  static const String tfType = 'aws_ram_resource_share_associations_exclusive';

  AwsRamResourceShareAssociationsExclusive({
    required super.localName,
    TfArg<List<String>>? principals,
    TfArg<String>? region,
    TfArg<List<String>>? resourceArns,
    required TfArg<String> resourceShareArn,
    TfArg<List<String>>? sources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'principals': ?principals,
           'region': ?region,
           'resource_arns': ?resourceArns,
           'resource_share_arn': resourceShareArn,
           'sources': ?sources,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRamResourceShareAssociationsExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRamResourceShareAssociationsExclusive>`.
  RefTo<AwsRamResourceShareAssociationsExclusive> get ref => RefTo.of(this);

  /// Reference to `principals` attribute.
  TfRef<List<String>> get principalsRef =>
      TfRef.attribute<List<String>>(this, 'principals');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arns` attribute.
  TfRef<List<String>> get resourceArnsRef =>
      TfRef.attribute<List<String>>(this, 'resource_arns');

  /// Reference to `resource_share_arn` attribute.
  TfRef<String> get resourceShareArnRef =>
      TfRef.attribute<String>(this, 'resource_share_arn');

  /// Reference to `sources` attribute.
  TfRef<List<String>> get sourcesRef =>
      TfRef.attribute<List<String>>(this, 'sources');
}
