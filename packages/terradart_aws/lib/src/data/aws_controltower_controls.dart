// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_controltower_controls`.
const Set<String> _awsControltowerControlsSensitive = <String>{};

/// Factory wrapper for `aws_controltower_controls`.
final class DataAwsControltowerControls extends Data {
  static const String tfType = 'aws_controltower_controls';

  DataAwsControltowerControls({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> targetIdentifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'target_identifier': targetIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsControltowerControlsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled_controls` attribute.
  TfRef<List<String>> get enabledControls =>
      TfRef.attribute<List<String>>(this, 'enabled_controls');
}
