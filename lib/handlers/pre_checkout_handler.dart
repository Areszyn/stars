import 'package:televerse/televerse.dart';

/// Handler for preCheckoutQuery
Future<void> handlePreCheckout(Context ctx) async {
  final preCheckoutQuery = ctx.preCheckoutQuery!;

  print(preCheckoutQuery.from.id); // The Telegram UID of the user
  // Optional, additional database checks, etc, goes here :)

  // Accept the incoming `preCheckoutQuery` if everything's fine.
  await ctx.answerPreCheckouQuery(true);

  // Done that's it
}
