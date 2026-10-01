// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_scope`.
const Set<String> _awsVpcIpamScopeSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_scope`.
final class AwsVpcIpamScope extends Resource {
  static const String tfType = 'aws_vpc_ipam_scope';

  AwsVpcIpamScope({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> ipamId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'ipam_id': ipamId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpamScope>`.
  RefTo<AwsVpcIpamScope> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipam_arn` attribute.
  TfRef<String> get ipamArn => TfRef.attribute<String>(this, 'ipam_arn');

  /// Reference to `ipam_scope_type` attribute.
  TfRef<String> get ipamScopeType =>
      TfRef.attribute<String>(this, 'ipam_scope_type');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `pool_count` attribute.
  TfRef<num> get poolCount => TfRef.attribute<num>(this, 'pool_count');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ipam_id` attribute.
  TfRef<String> get ipamId => TfRef.attribute<String>(this, 'ipam_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
