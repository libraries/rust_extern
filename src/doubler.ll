; ModuleID = 'main'
source_filename = "/src/rs/src/doubler.ts"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @doubler(i64 %n) {
body:
  %0 = mul i64 %n, 2
  ret i64 %0
}
