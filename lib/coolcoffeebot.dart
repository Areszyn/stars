import 'dart:io';

import 'package:televerse/televerse.dart';

/// Create your Bot instance with the token obtained from @BotFather in Telegram
///
/// Save your token securely. Environment variable would be good choice.
/// Simply, you shouldn't reveal your Bot token in public :) - keep it safe, shh!
final bot = Bot(Platform.environment["BOT_TOKEN"]!);
