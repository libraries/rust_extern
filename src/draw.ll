; ModuleID = 'main'
source_filename = "/src/rust_extern/src/draw.ts"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Round = type { %Point*, i64 }
%Point = type { i64, i64 }

define i64 @round_circumference(%Round* %r) {
body:
  %0 = getelementptr inbounds %Round, %Round* %r, i32 0, i32 1
  %1 = load i64, i64* %0
  %2 = mul i64 2, %1
  %3 = mul i64 %2, 3
  ret i64 %3
}

define i64 @round_area(%Round* %r) {
body:
  %0 = getelementptr inbounds %Round, %Round* %r, i32 0, i32 1
  %1 = load i64, i64* %0
  %2 = getelementptr inbounds %Round, %Round* %r, i32 0, i32 1
  %3 = load i64, i64* %2
  %4 = mul i64 %1, %3
  %5 = mul i64 %4, 3
  ret i64 %5
}

define %Point* @new_point(i64 %x, i64 %y) {
body:
  %0 = call i64 @syscall(i64 0, i64 %x, i64 %y, i64 0, i64 0, i64 0, i64 0)
  %1 = alloca %Point
  %2 = getelementptr inbounds %Point, %Point* %1, i32 0, i32 0
  store i64 %x, i64* %2
  %3 = getelementptr inbounds %Point, %Point* %1, i32 0, i32 1
  store i64 %y, i64* %3
  %p = alloca %Point*
  store %Point* %1, %Point** %p
  %4 = load %Point*, %Point** %p
  ret %Point* %4
}

declare i64 @syscall(i64, i64, i64, i64, i64, i64, i64)
