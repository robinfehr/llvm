# RUN: llvm-mca -march=aarch64 -mcpu=exynos-m3 -iterations=1 -scheduler-stats -resource-pressure=false -instruction-info=false < %s | FileCheck %s -check-prefix=ALL
# RUN: llvm-mca -march=aarch64 -mcpu=exynos-m1 -iterations=1 -scheduler-stats -resource-pressure=false -instruction-info=false < %s | FileCheck %s -check-prefix=ALL

  b   t

# ALL:      Schedulers - number of cycles where we saw N instructions issued:
# ALL-NEXT: [# issued], [# cycles]
# ALL-NEXT:  0,          1  (50.0%)
# ALL-NEXT:  1,          1  (50.0%)

# ALL:      Scheduler's queue usage:
# ALL-NEXT: No scheduler resources used.

