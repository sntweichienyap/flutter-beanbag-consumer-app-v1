class TransactionHistoryModel {
  int transactionID;
  String redeemDate;
  String redeemTime;
  String statusName;
  String couponName;

  TransactionHistoryModel({
    this.transactionID = 1,
    this.redeemDate = "1/1/2020",
    this.redeemTime = "11:12:13",
    this.statusName = "Redeemed",
    this.couponName = "Voucher A",
  });
}
