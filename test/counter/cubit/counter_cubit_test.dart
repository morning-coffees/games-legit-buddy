// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gameslegitbuddy/Home/cubit/home_cubit.dart';

void main() {
  group('HomeCubit', () {
    test('initial state is 0', () {
      expect(HomeCubit().state, equals(0));
    });

    blocTest<HomeCubit, int>(
      'emits [1] when increment is called',
      build: () => HomeCubit(),
      act: (cubit) => cubit.increment(),
      expect: () => [equals(1)],
    );

    blocTest<HomeCubit, int>(
      'emits [-1] when decrement is called',
      build: () => HomeCubit(),
      act: (cubit) => cubit.decrement(),
      expect: () => [equals(-1)],
    );
  });
}
