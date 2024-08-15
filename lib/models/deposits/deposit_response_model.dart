// Copyright 2024 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simbiotik_customer/models/deposits/deposit_page_model.dart';

part 'deposit_response_model.freezed.dart';
part 'deposit_response_model.g.dart';

@freezed
class DepositResponseModel with _$DepositResponseModel {
  const factory DepositResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'result') DepositPageModel? result,
  }) = _DepositResponseModel;

  factory DepositResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DepositResponseModelFromJson(json);
}
