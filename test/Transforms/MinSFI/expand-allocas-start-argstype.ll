; RUN: not opt %s -minsfi-expand-allocas -S 2>&1 | FileCheck %s

target datalayout = "p:32:32:32"
target triple = "le32-unknown-nacl"

define i32 @_start_minsfi(i32 %arg1, i32 %arg2) {
  ret i32 0
}

; CHECK: ExpandAllocas: Invalid signature of _start_minsfi
