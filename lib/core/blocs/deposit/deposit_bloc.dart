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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simbiotik_customer/data/data.dart';
import 'package:simbiotik_customer/models/deposits/deposit_page_model.dart';
import 'package:simbiotik_customer/models/deposits/deposit_response_model.dart';

part 'deposit_event.dart';
part 'deposit_state.dart';
part 'deposit_bloc.freezed.dart';

class DepositBloc extends Bloc<DepositEvent, DepositState> {
  final DepositRepository _depositRepository;

  DepositBloc(this._depositRepository) : super(const DepositState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(_Fetch event, Emitter<DepositState> emit) async {
    emit(state.copyWith(status: DepositStateStatus.loading, error: ''));

    try {
      final response = await _depositRepository.getDeposit(
        event.token,
        event.idUser,
        event.page,
      );
      emit(
        state.copyWith(
          status: DepositStateStatus.loaded,
          data: response,
        ),
      );
    } catch (e) {
      print('Errornya adalah $e');
      emit(
        state.copyWith(
          status: DepositStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
