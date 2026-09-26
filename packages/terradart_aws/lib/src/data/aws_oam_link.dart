// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOamLinkSensitive;

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
}
