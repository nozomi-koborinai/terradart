// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53profiles_resource_association`.
const Set<String> _awsRoute53profilesResourceAssociationSensitive = <String>{};

/// Factory wrapper for `aws_route53profiles_resource_association`.
final class AwsRoute53profilesResourceAssociation extends Resource {
  static const String tfType = 'aws_route53profiles_resource_association';

  AwsRoute53profilesResourceAssociation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> profileId,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    TfArg<String>? resourceProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'profile_id': profileId,
           'region': ?region,
           'resource_arn': resourceArn,
           'resource_properties': ?resourceProperties,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53profilesResourceAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53profilesResourceAssociation>`.
  RefTo<AwsRoute53profilesResourceAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileIdRef => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `resource_properties` attribute.
  TfRef<String> get resourcePropertiesRef =>
      TfRef.attribute<String>(this, 'resource_properties');
}
