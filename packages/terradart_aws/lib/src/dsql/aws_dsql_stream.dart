// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_dsql_stream`.
const Set<String> _awsDsqlStreamSensitive = <String>{};

/// Dsql Stream enum for `format`.
extension type const DsqlStreamFormat._(TfArg<String> _)
    implements TfArg<String> {
  DsqlStreamFormat.variable(String name) : this._(TfArg.variable(name));
  DsqlStreamFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DsqlStreamFormat.arg(TfArg<String> arg) : this._(arg);

  static const json = DsqlStreamFormat._(TfArgLiteral('JSON'));

  static const List<DsqlStreamFormat> values = [json];
}

/// Dsql Stream enum for `ordering`.
extension type const DsqlStreamOrdering._(TfArg<String> _)
    implements TfArg<String> {
  DsqlStreamOrdering.variable(String name) : this._(TfArg.variable(name));
  DsqlStreamOrdering.expression(String template)
    : this._(TfArg.expression(template));
  const DsqlStreamOrdering.arg(TfArg<String> arg) : this._(arg);

  static const unordered = DsqlStreamOrdering._(TfArgLiteral('UNORDERED'));

  static const List<DsqlStreamOrdering> values = [unordered];
}

/// Typed helper for the `target_definition` block of
/// `aws_dsql_stream` (derived from provider schema).
@immutable
final class DsqlStreamTargetDefinition {
  const DsqlStreamTargetDefinition({this.kinesis});

  final List<DsqlStreamKinesis>? kinesis;

  @internal
  Map<String, Object?> encode() => {
    if (kinesis != null) 'kinesis': [for (final e in kinesis!) e.encode()],
  };
}

/// Typed helper for the `target_definition.kinesis` block of
/// `aws_dsql_stream` (derived from provider schema).
@immutable
final class DsqlStreamKinesis {
  const DsqlStreamKinesis({required this.roleArn, required this.streamArn});

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> streamArn;

  @internal
  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_dsql_stream`.
final class AwsDsqlStream extends Resource {
  static const String tfType = 'aws_dsql_stream';

  AwsDsqlStream(
    super.localName, {
    required TfArg<String> clusterIdentifier,
    required DsqlStreamFormat format,
    required DsqlStreamOrdering ordering,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DsqlStreamTargetDefinition>? targetDefinition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_identifier': clusterIdentifier,
           'format': format,
           'ordering': ordering,
           'region': ?region,
           'tags': ?tags,
           if (targetDefinition != null)
             'target_definition': TfArg.literal([
               for (final e in targetDefinition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDsqlStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDsqlStream>`.
  RefTo<AwsDsqlStream> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `stream_identifier` attribute.
  TfRef<String> get streamIdentifier =>
      TfRef.attribute<String>(this, 'stream_identifier');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `ordering` attribute.
  TfRef<String> get ordering => TfRef.attribute<String>(this, 'ordering');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
