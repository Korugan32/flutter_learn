import 'package:json_annotation/json_annotation.dart';

part 'crypto.g.dart';

@JsonSerializable(createToJson: false)
class CryptoTicker {
    CryptoTicker({
        required this.id,
        required this.name,
        required this.symbol,
        required this.rank,
        required this.circulatingSupply,
        required this.totalSupply,
        required this.maxSupply,
        required this.betaValue,
        required this.firstDataAt,
        required this.lastUpdated,
        required this.quotes,
    });

    final String? id;
    final String? name;
    final String? symbol;
    final int? rank;

    @JsonKey(name: 'circulating_supply') 
    final int? circulatingSupply;

    @JsonKey(name: 'total_supply') 
    final int? totalSupply;

    @JsonKey(name: 'max_supply') 
    final int? maxSupply;

    @JsonKey(name: 'beta_value') 
    final double? betaValue;

    @JsonKey(name: 'first_data_at') 
    final DateTime? firstDataAt;

    @JsonKey(name: 'last_updated') 
    final DateTime? lastUpdated;
    final Map<String, Quote>? quotes;

    factory CryptoTicker.fromJson(Map<String, dynamic> json) => _$CryptoTickerFromJson(json);

}

@JsonSerializable(createToJson: false)
class Quote {
    Quote({
        required this.price,
        required this.volume24H,
        required this.volume24HChange24H,
        required this.marketCap,
        required this.marketCapChange24H,
        required this.percentChange15M,
        required this.percentChange30M,
        required this.percentChange1H,
        required this.percentChange6H,
        required this.percentChange12H,
        required this.percentChange24H,
        required this.percentChange7D,
        required this.percentChange30D,
        required this.percentChange1Y,
        required this.athPrice,
        required this.athDate,
        required this.percentFromPriceAth,
    });

    final double? price;

    @JsonKey(name: 'volume_24h') 
    final double? volume24H;

    @JsonKey(name: 'volume_24h_change_24h') 
    final double? volume24HChange24H;

    @JsonKey(name: 'market_cap') 
    final int? marketCap;

    @JsonKey(name: 'market_cap_change_24h') 
    final double? marketCapChange24H;

    @JsonKey(name: 'percent_change_15m') 
    final int? percentChange15M;

    @JsonKey(name: 'percent_change_30m') 
    final int? percentChange30M;

    @JsonKey(name: 'percent_change_1h') 
    final int? percentChange1H;

    @JsonKey(name: 'percent_change_6h') 
    final int? percentChange6H;

    @JsonKey(name: 'percent_change_12h') 
    final double? percentChange12H;

    @JsonKey(name: 'percent_change_24h') 
    final double? percentChange24H;

    @JsonKey(name: 'percent_change_7d') 
    final double? percentChange7D;

    @JsonKey(name: 'percent_change_30d') 
    final double? percentChange30D;

    @JsonKey(name: 'percent_change_1y') 
    final double? percentChange1Y;

    @JsonKey(name: 'ath_price') 
    final int? athPrice;

    @JsonKey(name: 'ath_date') 
    final DateTime? athDate;

    @JsonKey(name: 'percent_from_price_ath') 
    final double? percentFromPriceAth;

    factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

}
