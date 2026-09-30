// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_media_packagev2_channel_group`.
const Set<String> _awsMediaPackagev2ChannelGroupSensitive = <String>{};

/// Factory wrapper for `aws_media_packagev2_channel_group`.
final class AwsMediaPackagev2ChannelGroup extends Resource {
  static const String tfType = 'aws_media_packagev2_channel_group';

  AwsMediaPackagev2ChannelGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
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
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMediaPackagev2ChannelGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMediaPackagev2ChannelGroup>`.
  RefTo<AwsMediaPackagev2ChannelGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `egress_domain` attribute.
  TfRef<String> get egressDomain =>
      TfRef.attribute<String>(this, 'egress_domain');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
