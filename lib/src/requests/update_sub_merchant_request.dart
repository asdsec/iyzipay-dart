import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_sub_merchant_request.g.dart';

@JsonSerializable(includeIfNull: false)
class UpdateSubMerchantRequest extends BaseRequest<UpdateSubMerchantRequest> {
  const UpdateSubMerchantRequest({
    super.locale,
    super.conversationId,
    required this.name,
    required this.email,
    required this.gsmNumber,
    required this.address,
    required this.iban,
    this.taxOffice,
    this.contactName,
    this.contactSurname,
    this.legalCompanyTitle,
    this.swiftCode,
    required this.currency,
    this.identityNumber,
    this.taxNumber,
    this.subMerchantKey,
    this.settlementDescriptionTemplate,
  });

  final String name;
  final String email;
  final String gsmNumber;
  final String address;
  final String iban;
  final String? taxOffice;
  final String? contactName;
  final String? contactSurname;
  final String? legalCompanyTitle;
  final String? swiftCode;
  final Currency currency;
  final String? identityNumber;
  final String? taxNumber;
  final String? subMerchantKey;
  final String? settlementDescriptionTemplate;

  @override
  UpdateSubMerchantRequest fromJson(JsonMap json) =>
      _$UpdateSubMerchantRequestFromJson(json);

  @override
  JsonMap toJson() => _$UpdateSubMerchantRequestToJson(this);
}
