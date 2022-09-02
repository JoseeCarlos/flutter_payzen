// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/services.dart';
import 'package:flutter_payzen_platform_interface/flutter_payzen_platform_interface.dart';
import 'package:flutter_payzen_platform_interface/info.dart';

/// An implementation of [FlutterPayzenPlatform] that uses method channels.
class MethodChannelFlutterPayzen extends FlutterPayzenPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_payzen');

  @override
  Future<Infos?> search() {
    return InfosApi().search();
  }
}