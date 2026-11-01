/// What an app built into the container reads: the Stack's outputs, through
/// the reader synth writes.
library;

import 'dart:io';

import 'generated/single_project_app.app.dart';

final outputs = SingleProjectAppStackOutputs.fromEnvironment(
  Platform.environment,
);
final instance = outputs.dbInstance; // DB_INSTANCE
