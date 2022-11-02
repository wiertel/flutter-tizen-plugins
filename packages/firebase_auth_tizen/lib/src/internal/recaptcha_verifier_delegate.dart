// Copyright 2021 Invertase Limited. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

import 'package:firebase_auth_dart/firebase_auth_dart.dart';

/// Delegate to override the default behavior of RecaptchaVerifier using nothing.
class RecaptchaVerifierDelegate extends RecaptchaVerifier {
  /// Construct a delegate and pass empty parameters.
  RecaptchaVerifierDelegate(Map<String, dynamic> parameters)
      : super(parameters);

  @override
  Future<String?> verify(
    RecaptchaArgs args, [
    Duration timeout = const Duration(seconds: 60),
  ]) async {
    throw UnimplementedError('Recaptcha not implemented');
  }
}
