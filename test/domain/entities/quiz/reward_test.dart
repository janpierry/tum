import 'package:flutter_test/flutter_test.dart';
import 'package:tum/domain/entities/quiz/reward.dart';

void main() {
  group(
    'Test entity equatable props',
    () {
      test(
        'Two entities with same props should be equal',
        () {
          const first = Reward(description: 'description');
          const second = Reward(description: 'description');
          assert(first == second);
        },
      );

      test(
        'Two entities with different [questions] should not be equal',
        () {
          const first = Reward(description: 'description');
          const second = Reward(description: 'different description');
          assert(first != second);
        },
      );
    },
  );
}
