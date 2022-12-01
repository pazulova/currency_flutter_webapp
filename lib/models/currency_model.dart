class CurrencyModel {
    CurrencyModel({
        this.title,
        this.code,
        this.cbPrice,
        this.nbuBuyPrice,
        this.nbuCellPrice,
        this.date,
        this.imageUrl,
    });
    
    String? title;
    String? code;
    String? cbPrice;
    String? nbuBuyPrice;
    String? nbuCellPrice;
    String? date;
    String? imageUrl;

    factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        nbuCellPrice: json["nbu_cell_price"],
        date: json["date"],
        imageUrl: json["imageUrl"]
    );
}
