// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53profiles_association`.
const Set<String> _awsRoute53profilesAssociationSensitive = <String>{};

/// Factory wrapper for `aws_route53profiles_association`.
final class AwsRoute53profilesAssociation extends Resource {
  static const String tfType = 'aws_route53profiles_association';

  AwsRoute53profilesAssociation(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> profileId,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    TfArg<Map<String, String>>? tags,
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
           'resource_id': resourceId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53profilesAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53profilesAssociation>`.
  RefTo<AwsRoute53profilesAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
