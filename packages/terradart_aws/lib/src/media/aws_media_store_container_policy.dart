// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_media_store_container_policy`.
const Set<String> _awsMediaStoreContainerPolicySensitive = <String>{};

/// Factory wrapper for `aws_media_store_container_policy`.
final class AwsMediaStoreContainerPolicy extends Resource {
  static const String tfType = 'aws_media_store_container_policy';

  AwsMediaStoreContainerPolicy({
    required super.localName,
    required TfArg<String> containerName,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_name': containerName,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMediaStoreContainerPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
