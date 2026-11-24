// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsagent_asset_file`.
const Set<String> _awsDevopsagentAssetFileSensitive = <String>{};

/// Exactly one of `bytes`, `text` on the `content` block of `aws_devopsagent_asset_file`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.bytes(...)`.
sealed class DevopsagentAssetFileContent {
  const DevopsagentAssetFileContent();

  /// Sets `bytes`.
  const factory DevopsagentAssetFileContent.bytes(TfArg<String> bytes) =
      DevopsagentAssetFileContentBytes;

  /// Sets `text`.
  const factory DevopsagentAssetFileContent.text(TfArg<String> text) =
      DevopsagentAssetFileContentText;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DevopsagentAssetFileContent.bytes] choice: sets `bytes`.
final class DevopsagentAssetFileContentBytes
    extends DevopsagentAssetFileContent {
  const DevopsagentAssetFileContentBytes(this.bytes);

  final TfArg<String> bytes;

  @internal
  @override
  String get blockKey => 'bytes';

  @internal
  @override
  Map<String, Object?> encode() => {'bytes': bytes.toTfJson()};
}

/// The [DevopsagentAssetFileContent.text] choice: sets `text`.
final class DevopsagentAssetFileContentText
    extends DevopsagentAssetFileContent {
  const DevopsagentAssetFileContentText(this.text);

  final TfArg<String> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Factory wrapper for `aws_devopsagent_asset_file`.
final class AwsDevopsagentAssetFile extends Resource {
  static const String tfType = 'aws_devopsagent_asset_file';

  AwsDevopsagentAssetFile(
    super.localName, {
    required TfArg<String> agentSpaceId,
    required TfArg<String> assetId,
    TfArg<String>? metadata,
    required TfArg<String> path,
    TfArg<String>? region,
    List<DevopsagentAssetFileContent>? content,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_space_id': agentSpaceId,
           'asset_id': assetId,
           'metadata': ?metadata,
           'path': path,
           'region': ?region,
           if (content != null)
             'content': TfArg.literal([for (final e in content) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsagentAssetFileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevopsagentAssetFile>`.
  RefTo<AwsDevopsagentAssetFile> get ref => RefTo.of(this);

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `metadata_actual` attribute.
  TfRef<String> get metadataActual =>
      TfRef.attribute<String>(this, 'metadata_actual');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `agent_space_id` attribute.
  TfRef<String> get agentSpaceId =>
      TfRef.attribute<String>(this, 'agent_space_id');

  /// Reference to `asset_id` attribute.
  TfRef<String> get assetId => TfRef.attribute<String>(this, 'asset_id');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
