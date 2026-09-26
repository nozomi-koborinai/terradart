// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_medialive_input_security_group`.
const Set<String> _awsMedialiveInputSecurityGroupSensitive = <String>{};

/// Typed helper for the `whitelist_rules` block of
/// `aws_medialive_input_security_group` (derived from provider schema).
@immutable
final class MedialiveInputSecurityGroupWhitelistRules {
  const MedialiveInputSecurityGroupWhitelistRules({required this.cidr});

  final TfArg<String> cidr;

  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};
}

/// Factory wrapper for `aws_medialive_input_security_group`.
final class AwsMedialiveInputSecurityGroup extends Resource {
  static const String tfType = 'aws_medialive_input_security_group';

  AwsMedialiveInputSecurityGroup({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<MedialiveInputSecurityGroupWhitelistRules> whitelistRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'whitelist_rules': TfArg.literal([
             for (final e in whitelistRules) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMedialiveInputSecurityGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `inputs` attribute.
  TfRef<List<String>> get inputs =>
      TfRef.attribute<List<String>>(this, 'inputs');
}
