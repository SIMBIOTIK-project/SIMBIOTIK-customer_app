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

part of 'user_bloc.dart';

enum UserStateStatus {
  initial,
  loading,
  loaded,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isLoaded => this == loaded;
  bool get isError => this == error;
}

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(UserStateStatus.initial) UserStateStatus status,
    UserModel? data,
    @Default('') String? error,
  }) = _UserState;
}