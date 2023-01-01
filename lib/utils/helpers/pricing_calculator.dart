class AppPricingCalculator {
  static double calculatorTotalPrice(double produtPrice, String location) {
    double texRate = getTextRateForLocation(location);
    double texAmount = produtPrice * texRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = produtPrice + texAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTextRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTextRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }
}
