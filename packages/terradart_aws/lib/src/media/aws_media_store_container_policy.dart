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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMediaStoreContainerPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMediaStoreContainerPolicy>`.
  RefTo<AwsMediaStoreContainerPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerNameRef =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `policy` attribute.
  TfRef<String> get policyRef => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
