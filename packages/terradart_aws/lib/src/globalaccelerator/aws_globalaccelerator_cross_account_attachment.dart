// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_cross_account_attachment`.
const Set<String> _awsGlobalacceleratorCrossAccountAttachmentSensitive =
    <String>{};

/// Typed helper for the `resource` block of
/// `aws_globalaccelerator_cross_account_attachment` (derived from provider schema).
@immutable
final class GlobalacceleratorCrossAccountAttachmentResource {
  const GlobalacceleratorCrossAccountAttachmentResource({
    this.cidrBlock,
    this.endpointId,
    this.region,
  });

  final TfArg<String>? cidrBlock;

  final TfArg<String>? endpointId;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    'cidr_block': ?cidrBlock?.toTfJson(),
    'endpoint_id': ?endpointId?.toTfJson(),
    'region': ?region?.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_cross_account_attachment`.
final class AwsGlobalacceleratorCrossAccountAttachment extends Resource {
  static const String tfType = 'aws_globalaccelerator_cross_account_attachment';

  AwsGlobalacceleratorCrossAccountAttachment({
    required super.localName,
    required TfArg<String> name,
    TfArg<List<String>>? principals,
    TfArg<Map<String, String>>? tags,
    List<GlobalacceleratorCrossAccountAttachmentResource>? resource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'principals': ?principals,
           'tags': ?tags,
           if (resource != null)
             'resource': TfArg.literal([for (final e in resource) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlobalacceleratorCrossAccountAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlobalacceleratorCrossAccountAttachment>`.
  RefTo<AwsGlobalacceleratorCrossAccountAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `principals` attribute.
  TfRef<List<String>> get principalsRef =>
      TfRef.attribute<List<String>>(this, 'principals');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
