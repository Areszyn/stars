import 'package:coolcoffeebot/coolcoffeebot.dart';
import 'package:coolcoffeebot/handlers/pre_checkout_handler.dart';
import 'package:coolcoffeebot/handlers/start_handler.dart';
import 'package:coolcoffeebot/handlers/successful_payment_handler.dart';

void main(List<String> arguments) async {
  // Handler for the /start command
  bot.command('start', startHandler);

  // Accept incoming pre-checkout-queries
  bot.onPreCheckoutQuery(handlePreCheckout);

  // Listener for SuccessfulPayment service message
  bot.onSuccessfulPayment(handleSuccessfulPayment);

  // Start the bot.
  await bot.start();
}
