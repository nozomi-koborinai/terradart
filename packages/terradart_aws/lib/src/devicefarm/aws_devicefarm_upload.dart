// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_upload`.
const Set<String> _awsDevicefarmUploadSensitive = <String>{};

/// Devicefarm Upload enum for `type`.
extension type const DevicefarmUploadType._(TfArg<String> _)
    implements TfArg<String> {
  DevicefarmUploadType.variable(String name) : this._(TfArg.variable(name));
  DevicefarmUploadType.expression(String template)
    : this._(TfArg.expression(template));
  const DevicefarmUploadType.arg(TfArg<String> arg) : this._(arg);

  static const androidApp = DevicefarmUploadType._(TfArgLiteral('ANDROID_APP'));
  static const iosApp = DevicefarmUploadType._(TfArgLiteral('IOS_APP'));
  static const webApp = DevicefarmUploadType._(TfArgLiteral('WEB_APP'));
  static const externalData = DevicefarmUploadType._(
    TfArgLiteral('EXTERNAL_DATA'),
  );
  static const appiumJavaJunitTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_JAVA_JUNIT_TEST_PACKAGE'),
  );
  static const appiumJavaTestngTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_JAVA_TESTNG_TEST_PACKAGE'),
  );
  static const appiumPythonTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_PYTHON_TEST_PACKAGE'),
  );
  static const appiumNodeTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_NODE_TEST_PACKAGE'),
  );
  static const appiumRubyTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_RUBY_TEST_PACKAGE'),
  );
  static const appiumWebJavaJunitTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE'),
  );
  static const appiumWebJavaTestngTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE'),
  );
  static const appiumWebPythonTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_PYTHON_TEST_PACKAGE'),
  );
  static const appiumWebNodeTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_NODE_TEST_PACKAGE'),
  );
  static const appiumWebRubyTestPackage = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_RUBY_TEST_PACKAGE'),
  );
  static const calabashTestPackage = DevicefarmUploadType._(
    TfArgLiteral('CALABASH_TEST_PACKAGE'),
  );
  static const instrumentationTestPackage = DevicefarmUploadType._(
    TfArgLiteral('INSTRUMENTATION_TEST_PACKAGE'),
  );
  static const uiautomationTestPackage = DevicefarmUploadType._(
    TfArgLiteral('UIAUTOMATION_TEST_PACKAGE'),
  );
  static const uiautomatorTestPackage = DevicefarmUploadType._(
    TfArgLiteral('UIAUTOMATOR_TEST_PACKAGE'),
  );
  static const xctestTestPackage = DevicefarmUploadType._(
    TfArgLiteral('XCTEST_TEST_PACKAGE'),
  );
  static const xctestUiTestPackage = DevicefarmUploadType._(
    TfArgLiteral('XCTEST_UI_TEST_PACKAGE'),
  );
  static const appiumJavaJunitTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_JAVA_JUNIT_TEST_SPEC'),
  );
  static const appiumJavaTestngTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_JAVA_TESTNG_TEST_SPEC'),
  );
  static const appiumPythonTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_PYTHON_TEST_SPEC'),
  );
  static const appiumNodeTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_NODE_TEST_SPEC'),
  );
  static const appiumRubyTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_RUBY_TEST_SPEC'),
  );
  static const appiumWebJavaJunitTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_JAVA_JUNIT_TEST_SPEC'),
  );
  static const appiumWebJavaTestngTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_JAVA_TESTNG_TEST_SPEC'),
  );
  static const appiumWebPythonTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_PYTHON_TEST_SPEC'),
  );
  static const appiumWebNodeTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_NODE_TEST_SPEC'),
  );
  static const appiumWebRubyTestSpec = DevicefarmUploadType._(
    TfArgLiteral('APPIUM_WEB_RUBY_TEST_SPEC'),
  );
  static const instrumentationTestSpec = DevicefarmUploadType._(
    TfArgLiteral('INSTRUMENTATION_TEST_SPEC'),
  );
  static const xctestUiTestSpec = DevicefarmUploadType._(
    TfArgLiteral('XCTEST_UI_TEST_SPEC'),
  );

  static const List<DevicefarmUploadType> values = [
    androidApp,
    iosApp,
    webApp,
    externalData,
    appiumJavaJunitTestPackage,
    appiumJavaTestngTestPackage,
    appiumPythonTestPackage,
    appiumNodeTestPackage,
    appiumRubyTestPackage,
    appiumWebJavaJunitTestPackage,
    appiumWebJavaTestngTestPackage,
    appiumWebPythonTestPackage,
    appiumWebNodeTestPackage,
    appiumWebRubyTestPackage,
    calabashTestPackage,
    instrumentationTestPackage,
    uiautomationTestPackage,
    uiautomatorTestPackage,
    xctestTestPackage,
    xctestUiTestPackage,
    appiumJavaJunitTestSpec,
    appiumJavaTestngTestSpec,
    appiumPythonTestSpec,
    appiumNodeTestSpec,
    appiumRubyTestSpec,
    appiumWebJavaJunitTestSpec,
    appiumWebJavaTestngTestSpec,
    appiumWebPythonTestSpec,
    appiumWebNodeTestSpec,
    appiumWebRubyTestSpec,
    instrumentationTestSpec,
    xctestUiTestSpec,
  ];
}

/// Factory wrapper for `aws_devicefarm_upload`.
final class AwsDevicefarmUpload extends Resource {
  static const String tfType = 'aws_devicefarm_upload';

  AwsDevicefarmUpload(
    super.localName, {
    TfArg<String>? contentType,
    required TfArg<String> name,
    required TfArg<String> projectArn,
    TfArg<String>? region,
    required DevicefarmUploadType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_type': ?contentType,
           'name': name,
           'project_arn': projectArn,
           'region': ?region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmUploadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevicefarmUpload>`.
  RefTo<AwsDevicefarmUpload> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `project_arn` attribute.
  TfRef<String> get projectArn => TfRef.attribute<String>(this, 'project_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
