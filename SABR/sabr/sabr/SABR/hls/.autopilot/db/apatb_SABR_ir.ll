; ModuleID = 'C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_SABR_ir(double* noalias nocapture nonnull "fpga.decayed.dim.hint"="100" %S, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="100" %V, double %S0, double %r, double %sigma_init, double %alpha, double %beta, double %rho, double %T, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="9800" %random_increments) local_unnamed_addr #0 {
entry:
  %0 = bitcast double* %S to [100 x double]*
  %S_copy = alloca [100 x double], align 512
  %1 = bitcast double* %V to [100 x double]*
  %V_copy = alloca [100 x double], align 512
  %2 = bitcast double* %random_increments to [9800 x double]*
  %3 = call i8* @malloc(i64 78400)
  %random_increments_copy = bitcast i8* %3 to [9800 x double]*
  call fastcc void @copy_in([100 x double]* nonnull %0, [100 x double]* nonnull align 512 %S_copy, [100 x double]* nonnull %1, [100 x double]* nonnull align 512 %V_copy, [9800 x double]* nonnull %2, [9800 x double]* %random_increments_copy)
  call void @apatb_SABR_hw([100 x double]* %S_copy, [100 x double]* %V_copy, double %S0, double %r, double %sigma_init, double %alpha, double %beta, double %rho, double %T, [9800 x double]* %random_increments_copy)
  call void @copy_back([100 x double]* %0, [100 x double]* %S_copy, [100 x double]* %1, [100 x double]* %V_copy, [9800 x double]* %2, [9800 x double]* %random_increments_copy)
  tail call void @free(i8* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([100 x double]* readonly, [100 x double]* align 512, [100 x double]* readonly, [100 x double]* align 512, [9800 x double]* readonly, [9800 x double]*) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* align 512 %1, [100 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* align 512 %3, [100 x double]* %2)
  call fastcc void @onebyonecpy_hls.p0a9800f64([9800 x double]* %5, [9800 x double]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* align 512 %dst, [100 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x double]* %dst, null
  %1 = icmp eq [100 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100f64([100 x double]* nonnull %dst, [100 x double]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100f64([100 x double]* %dst, [100 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x double]* %src, null
  %1 = icmp eq [100 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x double], [100 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x double], [100 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a9800f64([9800 x double]* %dst, [9800 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [9800 x double]* %dst, null
  %1 = icmp eq [9800 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a9800f64([9800 x double]* nonnull %dst, [9800 x double]* nonnull %src, i64 9800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a9800f64([9800 x double]* %dst, [9800 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [9800 x double]* %src, null
  %1 = icmp eq [9800 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [9800 x double], [9800 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [9800 x double], [9800 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([100 x double]*, [100 x double]* readonly align 512, [100 x double]*, [100 x double]* readonly align 512, [9800 x double]*, [9800 x double]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* %0, [100 x double]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* %2, [100 x double]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a9800f64([9800 x double]* %4, [9800 x double]* %5)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_SABR_hw([100 x double]*, [100 x double]*, double, double, double, double, double, double, double, [9800 x double]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([100 x double]*, [100 x double]* readonly align 512, [100 x double]*, [100 x double]* readonly align 512, [9800 x double]*, [9800 x double]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* %0, [100 x double]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* %2, [100 x double]* align 512 %3)
  ret void
}

declare void @SABR_hw_stub(double* noalias nocapture nonnull, double* noalias nocapture nonnull, double, double, double, double, double, double, double, double* noalias nocapture nonnull readonly)

define void @SABR_hw_stub_wrapper([100 x double]*, [100 x double]*, double, double, double, double, double, double, double, [9800 x double]*) #5 {
entry:
  call void @copy_out([100 x double]* null, [100 x double]* %0, [100 x double]* null, [100 x double]* %1, [9800 x double]* null, [9800 x double]* %9)
  %10 = bitcast [100 x double]* %0 to double*
  %11 = bitcast [100 x double]* %1 to double*
  %12 = bitcast [9800 x double]* %9 to double*
  call void @SABR_hw_stub(double* %10, double* %11, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double* %12)
  call void @copy_in([100 x double]* null, [100 x double]* %0, [100 x double]* null, [100 x double]* %1, [9800 x double]* null, [9800 x double]* %9)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
