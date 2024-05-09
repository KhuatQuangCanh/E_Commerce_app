class TPricingCalculator {
  //Calculate Price based on tax and shipping
  //Tính giá dựa trên thuế và phí vận chuyển
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost (Tính chi phí vận chuyển)
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax ( Tính thuế)
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API
    // return the appropriate tax rate.
    // Tra cứu thuế suất cho địa điểm nhất định từ cơ sở dữ liệu thuế suất hoặc API
    // trả về mức thuế thích hợp.
    return 0.10;
  }

  static double getShippingCost(String location) {
    // Lookip the shipping cost for the given location using a shipping rate API
    // calculate the shipping cost based on various like distance, weight, etc.
// Tra cứu chi phí vận chuyển cho địa điểm nhất định bằng API phí vận chuyển
    // tính toán chi phí vận chuyển dựa trên nhiều tiêu chí như khoảng cách, trọng lượng, v.v.
    return 5.00; // VD phí vận chuyển là 5$
  }
}
