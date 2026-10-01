// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_workspacesweb_session_logger`.
const Set<String> _awsWorkspaceswebSessionLoggerSensitive = <String>{};

/// Exactly one of `all`, `include` on the `event_filter` block of `aws_workspacesweb_session_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.all(...)`.
sealed class WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilter();

  /// Sets `all`.
  const factory WorkspaceswebSessionLoggerEventFilter.all(
    List<WorkspaceswebSessionLoggerAll> all,
  ) = WorkspaceswebSessionLoggerEventFilterAll;

  /// Sets `include`.
  const factory WorkspaceswebSessionLoggerEventFilter.include(
    List<WorkspaceswebSessionLoggerInclude> include,
  ) = WorkspaceswebSessionLoggerEventFilterInclude;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WorkspaceswebSessionLoggerEventFilter.all] choice: sets `all`.
final class WorkspaceswebSessionLoggerEventFilterAll
    extends WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilterAll(this.all);

  final List<WorkspaceswebSessionLoggerAll> all;

  @internal
  @override
  String get blockKey => 'all';

  @internal
  @override
  Map<String, Object?> encode() => {
    'all': [for (final e in all) e.encode()],
  };
}

/// The [WorkspaceswebSessionLoggerEventFilter.include] choice: sets `include`.
final class WorkspaceswebSessionLoggerEventFilterInclude
    extends WorkspaceswebSessionLoggerEventFilter {
  const WorkspaceswebSessionLoggerEventFilterInclude(this.include);

  final List<WorkspaceswebSessionLoggerInclude> include;

  @internal
  @override
  String get blockKey => 'include';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.toTfJson()],
  };
}

/// `include` — derived from the provider schema description.
extension type const WorkspaceswebSessionLoggerInclude._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebSessionLoggerInclude.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebSessionLoggerInclude.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebSessionLoggerInclude.arg(TfArg<String> arg) : this._(arg);

  static const websiteinteract = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('WebsiteInteract'),
  );
  static const filedownloadfromsecurebrowsertoremotedisk =
      WorkspaceswebSessionLoggerInclude._(
        TfArgLiteral('FileDownloadFromSecureBrowserToRemoteDisk'),
      );
  static const filetransferfromremotetolocaldisk =
      WorkspaceswebSessionLoggerInclude._(
        TfArgLiteral('FileTransferFromRemoteToLocalDisk'),
      );
  static const filetransferfromlocaltoremotedisk =
      WorkspaceswebSessionLoggerInclude._(
        TfArgLiteral('FileTransferFromLocalToRemoteDisk'),
      );
  static const fileuploadfromremotedisktosecurebrowser =
      WorkspaceswebSessionLoggerInclude._(
        TfArgLiteral('FileUploadFromRemoteDiskToSecureBrowser'),
      );
  static const contentpastetowebsite = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('ContentPasteToWebsite'),
  );
  static const contenttransferfromlocaltoremoteclipboard =
      WorkspaceswebSessionLoggerInclude._(
        TfArgLiteral('ContentTransferFromLocalToRemoteClipboard'),
      );
  static const contentcopyfromwebsite = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('ContentCopyFromWebsite'),
  );
  static const urlload = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('UrlLoad'),
  );
  static const tabopen = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('TabOpen'),
  );
  static const tabclose = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('TabClose'),
  );
  static const printjobsubmit = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('PrintJobSubmit'),
  );
  static const sessionconnect = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('SessionConnect'),
  );
  static const sessionstart = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('SessionStart'),
  );
  static const sessiondisconnect = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('SessionDisconnect'),
  );
  static const sessionend = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('SessionEnd'),
  );
  static const urlblockbycontentfilter = WorkspaceswebSessionLoggerInclude._(
    TfArgLiteral('UrlBlockByContentFilter'),
  );

  static const List<WorkspaceswebSessionLoggerInclude> values = [
    websiteinteract,
    filedownloadfromsecurebrowsertoremotedisk,
    filetransferfromremotetolocaldisk,
    filetransferfromlocaltoremotedisk,
    fileuploadfromremotedisktosecurebrowser,
    contentpastetowebsite,
    contenttransferfromlocaltoremoteclipboard,
    contentcopyfromwebsite,
    urlload,
    tabopen,
    tabclose,
    printjobsubmit,
    sessionconnect,
    sessionstart,
    sessiondisconnect,
    sessionend,
    urlblockbycontentfilter,
  ];
}

/// Typed helper for the `event_filter.all` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerAll {
  const WorkspaceswebSessionLoggerAll();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `log_configuration` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerLogConfiguration {
  const WorkspaceswebSessionLoggerLogConfiguration({this.s3});

  final List<WorkspaceswebSessionLoggerS3>? s3;

  @internal
  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `log_configuration.s3` block of
/// `aws_workspacesweb_session_logger` (derived from provider schema).
@immutable
final class WorkspaceswebSessionLoggerS3 {
  const WorkspaceswebSessionLoggerS3({
    required this.bucket,
    this.bucketOwner,
    required this.folderStructure,
    this.keyPrefix,
    required this.logFileFormat,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? bucketOwner;

  final WorkspaceswebSessionLoggerFolderStructure folderStructure;

  final TfArg<String>? keyPrefix;

  final WorkspaceswebSessionLoggerLogFileFormat logFileFormat;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'bucket_owner': ?bucketOwner?.toTfJson(),
    'folder_structure': folderStructure.toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
    'log_file_format': logFileFormat.toTfJson(),
  };
}

/// `folder_structure` — derived from the provider schema description.
extension type const WorkspaceswebSessionLoggerFolderStructure._(
  TfArg<String> _
) implements TfArg<String> {
  WorkspaceswebSessionLoggerFolderStructure.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebSessionLoggerFolderStructure.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebSessionLoggerFolderStructure.arg(TfArg<String> arg)
    : this._(arg);

  static const flat = WorkspaceswebSessionLoggerFolderStructure._(
    TfArgLiteral('Flat'),
  );
  static const nestedbydate = WorkspaceswebSessionLoggerFolderStructure._(
    TfArgLiteral('NestedByDate'),
  );

  static const List<WorkspaceswebSessionLoggerFolderStructure> values = [
    flat,
    nestedbydate,
  ];
}

/// `log_file_format` — derived from the provider schema description.
extension type const WorkspaceswebSessionLoggerLogFileFormat._(TfArg<String> _)
    implements TfArg<String> {
  WorkspaceswebSessionLoggerLogFileFormat.variable(String name)
    : this._(TfArg.variable(name));
  WorkspaceswebSessionLoggerLogFileFormat.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspaceswebSessionLoggerLogFileFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const jsonlines = WorkspaceswebSessionLoggerLogFileFormat._(
    TfArgLiteral('JSONLines'),
  );
  static const json = WorkspaceswebSessionLoggerLogFileFormat._(
    TfArgLiteral('Json'),
  );

  static const List<WorkspaceswebSessionLoggerLogFileFormat> values = [
    jsonlines,
    json,
  ];
}

/// Factory wrapper for `aws_workspacesweb_session_logger`.
final class AwsWorkspaceswebSessionLogger extends Resource {
  static const String tfType = 'aws_workspacesweb_session_logger';

  AwsWorkspaceswebSessionLogger(
    super.localName, {
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
           'additional_encryption_context': ?additionalEncryptionContext,
           'customer_managed_key': ?customerManagedKey,
           'display_name': ?displayName,
           'region': ?region,
           'tags': ?tags,
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

  /// Reference to `additional_encryption_context` attribute.
  TfRef<Map<String, String>> get additionalEncryptionContext =>
      TfRef.attribute<Map<String, String>>(
        this,
        'additional_encryption_context',
      );

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKey =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
