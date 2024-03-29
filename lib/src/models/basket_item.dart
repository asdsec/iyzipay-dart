import 'package:iyzipay/src/enums/basket_item_type.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basket_item.g.dart';

@JsonSerializable(includeIfNull: false)
class BasketItem with JsonConvertible<BasketItem> {
  const BasketItem({
    required this.id,
    required this.price,
    required this.name,
    required this.category1,
    this.category2,
    required this.itemType,
    this.subMerchantKey,
    this.subMerchantPrice,
  });

  final String id;
  final double price;
  final String name;
  final String category1;
  final String? category2;
  final BasketItemType itemType;
  final String? subMerchantKey;
  final double? subMerchantPrice;

  /// Converts [JsonMap] to [BasketItem]
  @override
  BasketItem fromJson(JsonMap json) => _$BasketItemFromJson(json);

  /// Converts [BasketItem] to [JsonMap]
  @override
  JsonMap toJson() => _$BasketItemToJson(this);
}
