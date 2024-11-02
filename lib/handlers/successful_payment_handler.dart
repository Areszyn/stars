import 'package:televerse/televerse.dart';

// Simply, take the star transaction ID.
Future<void> handleSuccessfulPayment(Context ctx) async {
  final successfulPayment = ctx.msg!.successfulPayment!;

  // Keep track of this payment id. Save it in your database. If the user seeks refund, you should handle it with this id.
  print(successfulPayment.telegramPaymentChargeId);

  // Handle payload if you're building something cool - like you can specify coffee id or something.
  print(successfulPayment.invoicePayload);

  await ctx.reply(
    "Thank you for your purchase. Your coffee will be delivered soon.",
  );
}
