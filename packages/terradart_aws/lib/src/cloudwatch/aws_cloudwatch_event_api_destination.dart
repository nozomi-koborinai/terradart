// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_api_destination`.
const Set<String> _awsCloudwatchEventApiDestinationSensitive = <String>{};

/// Cloudwatch Event Api Destination Http enum for `http_method`.
extension type const CloudwatchEventApiDestinationHttpMethod._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventApiDestinationHttpMethod.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventApiDestinationHttpMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventApiDestinationHttpMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const post = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('POST'),
  );
  static const get = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('GET'),
  );
  static const head = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('HEAD'),
  );
  static const options = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('OPTIONS'),
  );
  static const put = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('PUT'),
  );
  static const patch = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('PATCH'),
  );
  static const delete = CloudwatchEventApiDestinationHttpMethod._(
    TfArgLiteral('DELETE'),
  );

  static const List<CloudwatchEventApiDestinationHttpMethod> values = [
    post,
    get,
    head,
    options,
    put,
    patch,
    delete,
  ];
}

/// Factory wrapper for `aws_cloudwatch_event_api_destination`.
final class AwsCloudwatchEventApiDestination extends Resource {
  static const String tfType = 'aws_cloudwatch_event_api_destination';

  AwsCloudwatchEventApiDestination(
    super.localName, {
    required TfArg<String> connectionArn,
    TfArg<String>? description,
    required CloudwatchEventApiDestinationHttpMethod httpMethod,
    required TfArg<String> invocationEndpoint,
    TfArg<num>? invocationRateLimitPerSecond,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_arn': connectionArn,
           'description': ?description,
           'http_method': httpMethod,
           'invocation_endpoint': invocationEndpoint,
           'invocation_rate_limit_per_second': ?invocationRateLimitPerSecond,
           'name': name,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventApiDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventApiDestination>`.
  RefTo<AwsCloudwatchEventApiDestination> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connection_arn` attribute.
  TfRef<String> get connectionArn =>
      TfRef.attribute<String>(this, 'connection_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethod => TfRef.attribute<String>(this, 'http_method');

  /// Reference to `invocation_endpoint` attribute.
  TfRef<String> get invocationEndpoint =>
      TfRef.attribute<String>(this, 'invocation_endpoint');

  /// Reference to `invocation_rate_limit_per_second` attribute.
  TfRef<num> get invocationRateLimitPerSecond =>
      TfRef.attribute<num>(this, 'invocation_rate_limit_per_second');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
