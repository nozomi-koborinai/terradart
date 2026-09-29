// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_session_logger`.
const Set<String> _awsWorkspaceswebSessionLoggerSensitive = <String>{};

/// Typed helper for the `event_filter` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilter({required this.eventFilter});

  final WorkspaceswebSessionLoggerEventFilterEventFilter eventFilter;

  Map<String, Object?> encode() => {...eventFilter.encode()};
}

/// Exactly one of `all`, `include` on the `event_filter` block of `aws_workspacesweb_session_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.all(...)`.
sealed class WorkspaceswebSessionLoggerEventFilterEventFilter {
  const WorkspaceswebSessionLoggerEventFilterEventFilter();

  /// Sets `all`.
  const factory WorkspaceswebSessionLoggerEventFilterEventFilter.all(
    List<WorkspaceswebSessionLoggerEventFilterAll> all,
  ) = WorkspaceswebSessionLoggerEventFilterEventFilterAll;

  /// Sets `include`.
  const factory WorkspaceswebSessionLoggerEventFilterEventFilter.include(
    List<TfArg<WorkspaceswebSessionLoggerEventFilterInclude>> include,
  ) = WorkspaceswebSessionLoggerEventFilterEventFilterInclude;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkspaceswebSessionLoggerEventFilterEventFilter.all] choice: sets `all`.
final class WorkspaceswebSessionLoggerEventFilterEventFilterAll
    extends WorkspaceswebSessionLoggerEventFilterEventFilter {
  const WorkspaceswebSessionLoggerEventFilterEventFilterAll(this.all);

  final List<WorkspaceswebSessionLoggerEventFilterAll> all;

  @override
  String get blockKey => 'all';

  @override
  Map<String, Object?> encode() => {
    'all': [for (final e in all) e.encode()],
  };
}

/// The [WorkspaceswebSessionLoggerEventFilterEventFilter.include] choice: sets `include`.
final class WorkspaceswebSessionLoggerEventFilterEventFilterInclude
    extends WorkspaceswebSessionLoggerEventFilterEventFilter {
  const WorkspaceswebSessionLoggerEventFilterEventFilterInclude(this.include);

  final List<TfArg<WorkspaceswebSessionLoggerEventFilterInclude>> include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.toTfJson()],
  };
}

/// `include` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerEventFilterInclude implements TerraformEnum {
  websiteinteract('WebsiteInteract'),
  filedownloadfromsecurebrowsertoremotedisk(
    'FileDownloadFromSecureBrowserToRemoteDisk',
  ),
  filetransferfromremotetolocaldisk('FileTransferFromRemoteToLocalDisk'),
  filetransferfromlocaltoremotedisk('FileTransferFromLocalToRemoteDisk'),
  fileuploadfromremotedisktosecurebrowser(
    'FileUploadFromRemoteDiskToSecureBrowser',
  ),
  contentpastetowebsite('ContentPasteToWebsite'),
  contenttransferfromlocaltoremoteclipboard(
    'ContentTransferFromLocalToRemoteClipboard',
  ),
  contentcopyfromwebsite('ContentCopyFromWebsite'),
  urlload('UrlLoad'),
  tabopen('TabOpen'),
  tabclose('TabClose'),
  printjobsubmit('PrintJobSubmit'),
  sessionconnect('SessionConnect'),
  sessionstart('SessionStart'),
  sessiondisconnect('SessionDisconnect'),
  sessionend('SessionEnd'),
  urlblockbycontentfilter('UrlBlockByContentFilter');

  const WorkspaceswebSessionLoggerEventFilterInclude(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `event_filter.all` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerEventFilterAll {
  const WorkspaceswebSessionLoggerEventFilterAll();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `log_configuration` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerLogConfiguration {
  const WorkspaceswebSessionLoggerLogConfiguration({this.s3});

  final List<WorkspaceswebSessionLoggerLogConfigurationS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `log_configuration.s3` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerLogConfigurationS3 {
  const WorkspaceswebSessionLoggerLogConfigurationS3({
    required this.bucket,
    this.bucketOwner,
    required this.folderStructure,
    this.keyPrefix,
    required this.logFileFormat,
  });

  final TfArg<String> bucket;

  final TfArg<String>? bucketOwner;

  final TfArg<WorkspaceswebSessionLoggerLogConfigurationS3FolderStructure>
  folderStructure;

  final TfArg<String>? keyPrefix;

  final TfArg<WorkspaceswebSessionLoggerLogConfigurationS3LogFileFormat>
  logFileFormat;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (bucketOwner != null) 'bucket_owner': bucketOwner!.toTfJson(),
    'folder_structure': folderStructure.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
    'log_file_format': logFileFormat.toTfJson(),
  };
}

/// `folder_structure` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerLogConfigurationS3FolderStructure
    implements TerraformEnum {
  flat('Flat'),
  nestedbydate('NestedByDate');

  const WorkspaceswebSessionLoggerLogConfigurationS3FolderStructure(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `log_file_format` — derived from the provider schema description.
enum WorkspaceswebSessionLoggerLogConfigurationS3LogFileFormat
    implements TerraformEnum {
  jsonlines('JSONLines'),
  json('Json');

  const WorkspaceswebSessionLoggerLogConfigurationS3LogFileFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_workspacesweb_session_logger`.
final class AwsWorkspaceswebSessionLogger extends Resource {
  static const String tfType = 'aws_workspacesweb_session_logger';

  AwsWorkspaceswebSessionLogger({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? customerManagedKey,
    TfArg<String>? displayName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WorkspaceswebSessionLoggerEventFilter>? eventFilter,
    List<WorkspaceswebSessionLoggerLogConfiguration>? logConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalEncryptionContext != null)
             'additional_encryption_context': additionalEncryptionContext,
           if (customerManagedKey != null)
             'customer_managed_key': customerManagedKey,
           if (displayName != null) 'display_name': displayName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (eventFilter != null)
             'event_filter': TfArg.literal([
               for (final e in eventFilter) e.encode(),
             ]),
           if (logConfiguration != null)
             'log_configuration': TfArg.literal([
               for (final e in logConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebSessionLoggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspaceswebSessionLogger>`.
  RefTo<AwsWorkspaceswebSessionLogger> get ref => RefTo.of(this);

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `session_logger_arn` attribute.
  TfRef<String> get sessionLoggerArn =>
      TfRef.attribute<String>(this, 'session_logger_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
