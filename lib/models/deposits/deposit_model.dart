// Copyright 2024 SIMBIOTIK Developer
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
import 'package:simbiotik_customer/models/models.dart';

part 'deposit_model.freezed.dart';
part 'deposit_model.g.dart';

@freezed
class DepositModel with _$DepositModel {
  const factory DepositModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'id_user') String? idUser,
    @JsonKey(name: 'id_wastetype') int? idWastetype,
    @JsonKey(name: 'weight') int? weight,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'user') UserModel? user,
    @JsonKey(name: 'wastetype') WasteTypesModel? wasteType,
    @JsonKey(name: 'created_by') String? createdBy,
  }) = _DepositModel;

  factory DepositModel.fromJson(Map<String, dynamic> json) =>
      _$DepositModelFromJson(json);
}
