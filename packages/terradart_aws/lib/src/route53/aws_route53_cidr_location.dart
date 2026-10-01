// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_cidr_location`.
const Set<String> _awsRoute53CidrLocationSensitive = <String>{};

/// Factory wrapper for `aws_route53_cidr_location`.
final class AwsRoute53CidrLocation extends Resource {
  static const String tfType = 'aws_route53_cidr_location';

  AwsRoute53CidrLocation({
    required super.localName,
    required TfArg<List<String>> cidrBlocks,
    required TfArg<String> cidrCollectionId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_blocks': cidrBlocks,
           'cidr_collection_id': cidrCollectionId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53CidrLocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53CidrLocation>`.
  RefTo<AwsRoute53CidrLocation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');

  /// Reference to `cidr_collection_id` attribute.
  TfRef<String> get cidrCollectionId =>
      TfRef.attribute<String>(this, 'cidr_collection_id');
}
