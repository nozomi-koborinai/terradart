// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsagent_asset`.
const Set<String> _awsDevopsagentAssetSensitive = <String>{};

/// Exactly one of `file`, `source_url`, `zip` on the `content` block of `aws_devopsagent_asset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.file(...)`.
sealed class DevopsagentAssetContent {
  const DevopsagentAssetContent();

  /// Sets `file`.
  const factory DevopsagentAssetContent.file(List<DevopsagentAssetFile> file) =
      DevopsagentAssetContentFile;

  /// Sets `source_url`.
  const factory DevopsagentAssetContent.sourceUrl(
    List<DevopsagentAssetSourceUrl> sourceUrl,
  ) = DevopsagentAssetContentSourceUrl;

  /// Sets `zip`.
  const factory DevopsagentAssetContent.zip(List<DevopsagentAssetZip> zip) =
      DevopsagentAssetContentZip;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DevopsagentAssetContent.file] choice: sets `file`.
final class DevopsagentAssetContentFile extends DevopsagentAssetContent {
  const DevopsagentAssetContentFile(this.file);

  final List<DevopsagentAssetFile> file;

  @internal
  @override
  String get blockKey => 'file';

  @internal
  @override
  Map<String, Object?> encode() => {
    'file': [for (final e in file) e.encode()],
  };
}

/// The [DevopsagentAssetContent.sourceUrl] choice: sets `source_url`.
final class DevopsagentAssetContentSourceUrl extends DevopsagentAssetContent {
  const DevopsagentAssetContentSourceUrl(this.sourceUrl);

  final List<DevopsagentAssetSourceUrl> sourceUrl;

  @internal
  @override
  String get blockKey => 'source_url';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_url': [for (final e in sourceUrl) e.encode()],
  };
}

/// The [DevopsagentAssetContent.zip] choice: sets `zip`.
final class DevopsagentAssetContentZip extends DevopsagentAssetContent {
  const DevopsagentAssetContentZip(this.zip);

  final List<DevopsagentAssetZip> zip;

  @internal
  @override
  String get blockKey => 'zip';

  @internal
  @override
  Map<String, Object?> encode() => {
    'zip': [for (final e in zip) e.encode()],
  };
}

/// Typed helper for the `content.file` block of
/// `aws_devopsagent_asset` (derived from provider schema).
@immutable
final class DevopsagentAssetFile {
  const DevopsagentAssetFile({this.metadata, required this.path, this.body});

  final TfArg<String>? metadata;

  final TfArg<String> path;

  final List<DevopsagentAssetBody>? body;

  @internal
  Map<String, Object?> encode() => {
    'metadata': ?metadata?.toTfJson(),
    'path': path.toTfJson(),
    if (body != null) 'body': [for (final e in body!) e.encode()],
  };
}

/// Exactly one of `bytes`, `text` on the `content.file.body` block of `aws_devopsagent_asset`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.bytes(...)`.
sealed class DevopsagentAssetBody {
  const DevopsagentAssetBody();

  /// Sets `bytes`.
  const factory DevopsagentAssetBody.bytes(TfArg<String> bytes) =
      DevopsagentAssetBodyBytes;

  /// Sets `text`.
  const factory DevopsagentAssetBody.text(TfArg<String> text) =
      DevopsagentAssetBodyText;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DevopsagentAssetBody.bytes] choice: sets `bytes`.
final class DevopsagentAssetBodyBytes extends DevopsagentAssetBody {
  const DevopsagentAssetBodyBytes(this.bytes);

  final TfArg<String> bytes;

  @internal
  @override
  String get blockKey => 'bytes';

  @internal
  @override
  Map<String, Object?> encode() => {'bytes': bytes.toTfJson()};
}

/// The [DevopsagentAssetBody.text] choice: sets `text`.
final class DevopsagentAssetBodyText extends DevopsagentAssetBody {
  const DevopsagentAssetBodyText(this.text);

  final TfArg<String> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `content.source_url` block of
/// `aws_devopsagent_asset` (derived from provider schema).
@immutable
final class DevopsagentAssetSourceUrl {
  const DevopsagentAssetSourceUrl({required this.url});

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `content.zip` block of
/// `aws_devopsagent_asset` (derived from provider schema).
@immutable
final class DevopsagentAssetZip {
  const DevopsagentAssetZip({required this.zipFile});

  final TfArg<String> zipFile;

  @internal
  Map<String, Object?> encode() => {'zip_file': zipFile.toTfJson()};
}

/// Factory wrapper for `aws_devopsagent_asset`.
final class AwsDevopsagentAsset extends Resource {
  static const String tfType = 'aws_devopsagent_asset';

  AwsDevopsagentAsset(
    super.localName, {
    required TfArg<String> agentSpaceId,
    required TfArg<String> assetType,
    TfArg<String>? metadata,
    TfArg<String>? region,
    List<DevopsagentAssetContent>? content,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_space_id': agentSpaceId,
           'asset_type': assetType,
           'metadata': ?metadata,
           'region': ?region,
           if (content != null)
             'content': TfArg.literal([for (final e in content) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsagentAssetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevopsagentAsset>`.
  RefTo<AwsDevopsagentAsset> get ref => RefTo.of(this);

  /// Reference to `asset_id` attribute.
  TfRef<String> get assetId => TfRef.attribute<String>(this, 'asset_id');

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

  /// Reference to `asset_type` attribute.
  TfRef<String> get assetType => TfRef.attribute<String>(this, 'asset_type');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
