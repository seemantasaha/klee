; ModuleID = 'less3.bc'
source_filename = "less3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @lessThanThree(i16 signext) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !12, metadata !DIExpression()), !dbg !13
  %4 = load i16, i16* %3, align 2, !dbg !14
  %5 = sext i16 %4 to i32, !dbg !14
  %6 = icmp slt i32 %5, 3, !dbg !16
  br i1 %6, label %7, label %8, !dbg !17

; <label>:7:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !18
  br label %9, !dbg !18

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !20
  br label %9, !dbg !20

; <label>:9:                                      ; preds = %8, %7
  %10 = load i32, i32* %2, align 4, !dbg !22
  ret i32 %10, !dbg !22
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i16* %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = bitcast i16* %2 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* %3, i64 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !29
  %4 = load i16, i16* %2, align 2, !dbg !30
  %5 = call i32 @lessThanThree(i16 signext %4), !dbg !31
  ret i32 0, !dbg !32
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "less3.c", directory: "/home/shihua/klee/examples/my_example")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "lessThanThree", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 2, type: !11)
!13 = !DILocation(line: 2, column: 25, scope: !7)
!14 = !DILocation(line: 3, column: 6, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 3, column: 6)
!16 = !DILocation(line: 3, column: 8, scope: !15)
!17 = !DILocation(line: 3, column: 6, scope: !7)
!18 = !DILocation(line: 4, column: 3, scope: !19)
!19 = distinct !DILexicalBlock(scope: !15, file: !1, line: 3, column: 13)
!20 = !DILocation(line: 6, column: 3, scope: !21)
!21 = distinct !DILexicalBlock(scope: !15, file: !1, line: 5, column: 9)
!22 = !DILocation(line: 8, column: 1, scope: !7)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !24, isLocal: false, isDefinition: true, scopeLine: 10, isOptimized: false, unit: !0, variables: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!10}
!26 = !DILocalVariable(name: "a", scope: !23, file: !1, line: 11, type: !11)
!27 = !DILocation(line: 11, column: 8, scope: !23)
!28 = !DILocation(line: 12, column: 21, scope: !23)
!29 = !DILocation(line: 12, column: 2, scope: !23)
!30 = !DILocation(line: 13, column: 16, scope: !23)
!31 = !DILocation(line: 13, column: 2, scope: !23)
!32 = !DILocation(line: 14, column: 2, scope: !23)
