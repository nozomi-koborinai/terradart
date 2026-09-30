// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oam/aws_oam_link.dart';

/// Sensitive field paths for `aws_oam_link`.
const Set<String> _awsOamLinkSensitive = <String>{};

/// Factory wrapper for `aws_oam_link`.
final class DataAwsOamLink extends Data {
  static const String tfType = 'aws_oam_link';

  DataAwsOamLink({
    required super.localName,
    required TfArg<String> linkIdentifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'link_identifier': linkIdentifier,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOamLinkSensitive;

  /// A reference to the `aws_oam_link` this data source reads, for
  /// arguments typed `RefTo<AwsOamLink>`.
  RefTo<AwsOamLink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `label_template` attribute.
  TfRef<String> get labelTemplate =>
      TfRef.attribute<String>(this, 'label_template');

  /// Reference to `link_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get linkConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'link_configuration');

  /// Reference to `link_id` attribute.
  TfRef<String> get linkId => TfRef.attribute<String>(this, 'link_id');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypes =>
      TfRef.attribute<List<String>>(this, 'resource_types');

  /// Reference to `sink_arn` attribute.
  TfRef<String> get sinkArn => TfRef.attribute<String>(this, 'sink_arn');

  /// Reference to `link_identifier` attribute.
  TfRef<String> get linkIdentifierRef =>
      TfRef.attribute<String>(this, 'link_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
