// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoTicker _$CryptoTickerFromJson(Map<String, dynamic> json) => CryptoTicker(
  id: json['id'] as String?,
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
  rank: (json['rank'] as num?)?.toInt(),
  circulatingSupply: (json['circulating_supply'] as num?)?.toInt(),
  totalSupply: (json['total_supply'] as num?)?.toInt(),
  maxSupply: (json['max_supply'] as num?)?.toInt(),
  betaValue: (json['beta_value'] as num?)?.toDouble(),
  firstDataAt: json['first_data_at'] == null
      ? null
      : DateTime.parse(json['first_data_at'] as String),
  lastUpdated: json['last_updated'] == null
      ? null
      : DateTime.parse(json['last_updated'] as String),
  quotes: (json['quotes'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Quote.fromJson(e as Map<String, dynamic>)),
  ),
);

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
  price: (json['price'] as num?)?.toDouble(),
  volume24H: (json['volume_24h'] as num?)?.toDouble(),
  volume24HChange24H: (json['volume_24h_change_24h'] as num?)?.toDouble(),
  marketCap: (json['market_cap'] as num?)?.toInt(),
  marketCapChange24H: (json['market_cap_change_24h'] as num?)?.toDouble(),
  percentChange15M: (json['percent_change_15m'] as num?)?.toInt(),
  percentChange30M: (json['percent_change_30m'] as num?)?.toInt(),
  percentChange1H: (json['percent_change_1h'] as num?)?.toInt(),
  percentChange6H: (json['percent_change_6h'] as num?)?.toInt(),
  percentChange12H: (json['percent_change_12h'] as num?)?.toDouble(),
  percentChange24H: (json['percent_change_24h'] as num?)?.toDouble(),
  percentChange7D: (json['percent_change_7d'] as num?)?.toDouble(),
  percentChange30D: (json['percent_change_30d'] as num?)?.toDouble(),
  percentChange1Y: (json['percent_change_1y'] as num?)?.toDouble(),
  athPrice: (json['ath_price'] as num?)?.toInt(),
  athDate: json['ath_date'] == null
      ? null
      : DateTime.parse(json['ath_date'] as String),
  percentFromPriceAth: (json['percent_from_price_ath'] as num?)?.toDouble(),
);
