; ModuleID = 'Regexp.bc'
source_filename = "Regexp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @match(i8*, i8*) #0 !dbg !7 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !13, metadata !DIExpression()), !dbg !14
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !15, metadata !DIExpression()), !dbg !16
  %6 = load i8*, i8** %4, align 8, !dbg !17
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !17
  %8 = load i8, i8* %7, align 1, !dbg !17
  %9 = sext i8 %8 to i32, !dbg !17
  %10 = icmp eq i32 %9, 94, !dbg !19
  br i1 %10, label %11, label %16, !dbg !20

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !21
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !22
  %14 = load i8*, i8** %5, align 8, !dbg !23
  %15 = call i32 @matchhere(i8* %13, i8* %14), !dbg !24
  store i32 %15, i32* %3, align 4, !dbg !25
  br label %30, !dbg !25

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !26, !llvm.loop !27

; <label>:17:                                     ; preds = %23, %16
  %18 = load i8*, i8** %4, align 8, !dbg !29
  %19 = load i8*, i8** %5, align 8, !dbg !32
  %20 = call i32 @matchhere(i8* %18, i8* %19), !dbg !33
  %21 = icmp ne i32 %20, 0, !dbg !33
  br i1 %21, label %22, label %23, !dbg !34

; <label>:22:                                     ; preds = %17
  store i32 1, i32* %3, align 4, !dbg !35
  br label %30, !dbg !35

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %5, align 8, !dbg !36
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !36
  store i8* %25, i8** %5, align 8, !dbg !36
  %26 = load i8, i8* %24, align 1, !dbg !37
  %27 = sext i8 %26 to i32, !dbg !37
  %28 = icmp ne i32 %27, 0, !dbg !38
  br i1 %28, label %17, label %29, !dbg !39, !llvm.loop !27

; <label>:29:                                     ; preds = %23
  store i32 0, i32* %3, align 4, !dbg !40
  br label %30, !dbg !40

; <label>:30:                                     ; preds = %29, %22, %11
  %31 = load i32, i32* %3, align 4, !dbg !41
  ret i32 %31, !dbg !41
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @matchhere(i8*, i8*) #0 !dbg !42 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !45, metadata !DIExpression()), !dbg !46
  %6 = load i8*, i8** %4, align 8, !dbg !47
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !47
  %8 = load i8, i8* %7, align 1, !dbg !47
  %9 = sext i8 %8 to i32, !dbg !47
  %10 = icmp eq i32 %9, 0, !dbg !49
  br i1 %10, label %11, label %12, !dbg !50

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !51
  br label %68, !dbg !51

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !52
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !52
  %15 = load i8, i8* %14, align 1, !dbg !52
  %16 = sext i8 %15 to i32, !dbg !52
  %17 = icmp eq i32 %16, 42, !dbg !54
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  br i1 %17, label %22, label %27, !dbg !55

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %4, align 8, !dbg !56
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !57
  %25 = load i8*, i8** %5, align 8, !dbg !58
  %26 = call i32 @matchstar(i32 %21, i8* %24, i8* %25), !dbg !59
  store i32 %26, i32* %3, align 4, !dbg !60
  br label %68, !dbg !60

; <label>:27:                                     ; preds = %12
  %28 = icmp eq i32 %21, 36, !dbg !61
  br i1 %28, label %29, label %41, !dbg !63

; <label>:29:                                     ; preds = %27
  %30 = load i8*, i8** %4, align 8, !dbg !64
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !64
  %32 = load i8, i8* %31, align 1, !dbg !64
  %33 = sext i8 %32 to i32, !dbg !64
  %34 = icmp eq i32 %33, 0, !dbg !65
  br i1 %34, label %35, label %41, !dbg !66

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** %5, align 8, !dbg !67
  %37 = load i8, i8* %36, align 1, !dbg !68
  %38 = sext i8 %37 to i32, !dbg !68
  %39 = icmp eq i32 %38, 0, !dbg !69
  %40 = zext i1 %39 to i32, !dbg !69
  store i32 %40, i32* %3, align 4, !dbg !70
  br label %68, !dbg !70

; <label>:41:                                     ; preds = %29, %27
  %42 = load i8*, i8** %5, align 8, !dbg !71
  %43 = load i8, i8* %42, align 1, !dbg !73
  %44 = sext i8 %43 to i32, !dbg !73
  %45 = icmp ne i32 %44, 0, !dbg !74
  br i1 %45, label %46, label %67, !dbg !75

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8, !dbg !76
  %48 = getelementptr inbounds i8, i8* %47, i64 0, !dbg !76
  %49 = load i8, i8* %48, align 1, !dbg !76
  %50 = sext i8 %49 to i32, !dbg !76
  %51 = icmp eq i32 %50, 46, !dbg !77
  br i1 %51, label %61, label %52, !dbg !78

; <label>:52:                                     ; preds = %46
  %53 = load i8*, i8** %4, align 8, !dbg !79
  %54 = getelementptr inbounds i8, i8* %53, i64 0, !dbg !79
  %55 = load i8, i8* %54, align 1, !dbg !79
  %56 = sext i8 %55 to i32, !dbg !79
  %57 = load i8*, i8** %5, align 8, !dbg !80
  %58 = load i8, i8* %57, align 1, !dbg !81
  %59 = sext i8 %58 to i32, !dbg !81
  %60 = icmp eq i32 %56, %59, !dbg !82
  br i1 %60, label %61, label %67, !dbg !83

; <label>:61:                                     ; preds = %52, %46
  %62 = load i8*, i8** %4, align 8, !dbg !84
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !85
  %64 = load i8*, i8** %5, align 8, !dbg !86
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !87
  %66 = call i32 @matchhere(i8* %63, i8* %65), !dbg !88
  store i32 %66, i32* %3, align 4, !dbg !89
  br label %68, !dbg !89

; <label>:67:                                     ; preds = %52, %41
  store i32 0, i32* %3, align 4, !dbg !90
  br label %68, !dbg !90

; <label>:68:                                     ; preds = %67, %61, %35, %22, %11
  %69 = load i32, i32* %3, align 4, !dbg !91
  ret i32 %69, !dbg !91
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !92 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [7 x i8]* %2, metadata !95, metadata !DIExpression()), !dbg !99
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 0, !dbg !100
  call void @klee_make_symbolic(i8* %3, i64 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !101
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 0, !dbg !102
  %5 = call i32 @match(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !103
  ret i32 0, !dbg !104
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @matchstar(i32, i8*, i8*) #0 !dbg !105 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !108, metadata !DIExpression()), !dbg !109
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !112, metadata !DIExpression()), !dbg !113
  br label %8, !dbg !114, !llvm.loop !115

; <label>:8:                                      ; preds = %19, %3
  %9 = load i8*, i8** %6, align 8, !dbg !117
  %10 = load i8*, i8** %7, align 8, !dbg !120
  %11 = call i32 @matchhere(i8* %9, i8* %10), !dbg !121
  %12 = icmp ne i32 %11, 0, !dbg !121
  br i1 %12, label %13, label %14, !dbg !122

; <label>:13:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !123
  br label %29, !dbg !123

; <label>:14:                                     ; preds = %8
  %15 = load i8*, i8** %7, align 8, !dbg !124
  %16 = load i8, i8* %15, align 1, !dbg !125
  %17 = sext i8 %16 to i32, !dbg !125
  %18 = icmp ne i32 %17, 0, !dbg !126
  br i1 %18, label %19, label %.critedge, !dbg !127

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %7, align 8, !dbg !128
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !128
  store i8* %21, i8** %7, align 8, !dbg !128
  %22 = load i8, i8* %20, align 1, !dbg !129
  %23 = sext i8 %22 to i32, !dbg !129
  %24 = load i32, i32* %5, align 4, !dbg !130
  %25 = icmp eq i32 %23, %24, !dbg !131
  %26 = load i32, i32* %5, align 4, !dbg !132
  %27 = icmp eq i32 %26, 46, !dbg !133
  %28 = select i1 %25, i1 true, i1 %27, !dbg !134
  br i1 %28, label %8, label %.critedge, !dbg !135, !llvm.loop !115

.critedge:                                        ; preds = %14, %19
  store i32 0, i32* %4, align 4, !dbg !136
  br label %29, !dbg !136

; <label>:29:                                     ; preds = %.critedge, %13
  %30 = load i32, i32* %4, align 4, !dbg !137
  ret i32 %30, !dbg !137
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Regexp.c", directory: "/home/shihua/klee/examples/regexp")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "re", arg: 1, scope: !7, file: !1, line: 34, type: !11)
!14 = !DILocation(line: 34, column: 17, scope: !7)
!15 = !DILocalVariable(name: "text", arg: 2, scope: !7, file: !1, line: 34, type: !11)
!16 = !DILocation(line: 34, column: 27, scope: !7)
!17 = !DILocation(line: 35, column: 7, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 7)
!19 = !DILocation(line: 35, column: 13, scope: !18)
!20 = !DILocation(line: 35, column: 7, scope: !7)
!21 = !DILocation(line: 36, column: 22, scope: !18)
!22 = !DILocation(line: 36, column: 24, scope: !18)
!23 = !DILocation(line: 36, column: 28, scope: !18)
!24 = !DILocation(line: 36, column: 12, scope: !18)
!25 = !DILocation(line: 36, column: 5, scope: !18)
!26 = !DILocation(line: 37, column: 3, scope: !7)
!27 = distinct !{!27, !26, !28}
!28 = !DILocation(line: 40, column: 27, scope: !7)
!29 = !DILocation(line: 38, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 38, column: 9)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 6)
!32 = !DILocation(line: 38, column: 23, scope: !30)
!33 = !DILocation(line: 38, column: 9, scope: !30)
!34 = !DILocation(line: 38, column: 9, scope: !31)
!35 = !DILocation(line: 39, column: 7, scope: !30)
!36 = !DILocation(line: 40, column: 17, scope: !7)
!37 = !DILocation(line: 40, column: 12, scope: !7)
!38 = !DILocation(line: 40, column: 20, scope: !7)
!39 = !DILocation(line: 40, column: 3, scope: !31)
!40 = !DILocation(line: 41, column: 3, scope: !7)
!41 = !DILocation(line: 42, column: 1, scope: !7)
!42 = distinct !DISubprogram(name: "matchhere", scope: !1, file: !1, line: 22, type: !8, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!43 = !DILocalVariable(name: "re", arg: 1, scope: !42, file: !1, line: 22, type: !11)
!44 = !DILocation(line: 22, column: 28, scope: !42)
!45 = !DILocalVariable(name: "text", arg: 2, scope: !42, file: !1, line: 22, type: !11)
!46 = !DILocation(line: 22, column: 38, scope: !42)
!47 = !DILocation(line: 23, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 23, column: 7)
!49 = !DILocation(line: 23, column: 13, scope: !48)
!50 = !DILocation(line: 23, column: 7, scope: !42)
!51 = !DILocation(line: 24, column: 6, scope: !48)
!52 = !DILocation(line: 25, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !1, line: 25, column: 7)
!54 = !DILocation(line: 25, column: 13, scope: !53)
!55 = !DILocation(line: 25, column: 7, scope: !42)
!56 = !DILocation(line: 26, column: 29, scope: !53)
!57 = !DILocation(line: 26, column: 31, scope: !53)
!58 = !DILocation(line: 26, column: 35, scope: !53)
!59 = !DILocation(line: 26, column: 12, scope: !53)
!60 = !DILocation(line: 26, column: 5, scope: !53)
!61 = !DILocation(line: 27, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !1, line: 27, column: 7)
!63 = !DILocation(line: 27, column: 20, scope: !62)
!64 = !DILocation(line: 27, column: 23, scope: !62)
!65 = !DILocation(line: 27, column: 28, scope: !62)
!66 = !DILocation(line: 27, column: 7, scope: !42)
!67 = !DILocation(line: 28, column: 13, scope: !62)
!68 = !DILocation(line: 28, column: 12, scope: !62)
!69 = !DILocation(line: 28, column: 18, scope: !62)
!70 = !DILocation(line: 28, column: 5, scope: !62)
!71 = !DILocation(line: 29, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !42, file: !1, line: 29, column: 7)
!73 = !DILocation(line: 29, column: 7, scope: !72)
!74 = !DILocation(line: 29, column: 12, scope: !72)
!75 = !DILocation(line: 29, column: 19, scope: !72)
!76 = !DILocation(line: 29, column: 23, scope: !72)
!77 = !DILocation(line: 29, column: 28, scope: !72)
!78 = !DILocation(line: 29, column: 34, scope: !72)
!79 = !DILocation(line: 29, column: 37, scope: !72)
!80 = !DILocation(line: 29, column: 45, scope: !72)
!81 = !DILocation(line: 29, column: 44, scope: !72)
!82 = !DILocation(line: 29, column: 42, scope: !72)
!83 = !DILocation(line: 29, column: 7, scope: !42)
!84 = !DILocation(line: 30, column: 22, scope: !72)
!85 = !DILocation(line: 30, column: 24, scope: !72)
!86 = !DILocation(line: 30, column: 28, scope: !72)
!87 = !DILocation(line: 30, column: 32, scope: !72)
!88 = !DILocation(line: 30, column: 12, scope: !72)
!89 = !DILocation(line: 30, column: 5, scope: !72)
!90 = !DILocation(line: 31, column: 3, scope: !42)
!91 = !DILocation(line: 32, column: 1, scope: !42)
!92 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !93, isLocal: false, isDefinition: true, scopeLine: 51, isOptimized: false, unit: !0, variables: !2)
!93 = !DISubroutineType(types: !94)
!94 = !{!10}
!95 = !DILocalVariable(name: "re", scope: !92, file: !1, line: 53, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 56, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 7)
!99 = !DILocation(line: 53, column: 8, scope: !92)
!100 = !DILocation(line: 56, column: 22, scope: !92)
!101 = !DILocation(line: 56, column: 3, scope: !92)
!102 = !DILocation(line: 59, column: 9, scope: !92)
!103 = !DILocation(line: 59, column: 3, scope: !92)
!104 = !DILocation(line: 61, column: 3, scope: !92)
!105 = distinct !DISubprogram(name: "matchstar", scope: !1, file: !1, line: 14, type: !106, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{!10, !10, !11, !11}
!108 = !DILocalVariable(name: "c", arg: 1, scope: !105, file: !1, line: 14, type: !10)
!109 = !DILocation(line: 14, column: 26, scope: !105)
!110 = !DILocalVariable(name: "re", arg: 2, scope: !105, file: !1, line: 14, type: !11)
!111 = !DILocation(line: 14, column: 35, scope: !105)
!112 = !DILocalVariable(name: "text", arg: 3, scope: !105, file: !1, line: 14, type: !11)
!113 = !DILocation(line: 14, column: 45, scope: !105)
!114 = !DILocation(line: 15, column: 3, scope: !105)
!115 = distinct !{!115, !114, !116}
!116 = !DILocation(line: 18, column: 54, scope: !105)
!117 = !DILocation(line: 16, column: 19, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 16, column: 9)
!119 = distinct !DILexicalBlock(scope: !105, file: !1, line: 15, column: 6)
!120 = !DILocation(line: 16, column: 23, scope: !118)
!121 = !DILocation(line: 16, column: 9, scope: !118)
!122 = !DILocation(line: 16, column: 9, scope: !119)
!123 = !DILocation(line: 17, column: 7, scope: !118)
!124 = !DILocation(line: 18, column: 13, scope: !105)
!125 = !DILocation(line: 18, column: 12, scope: !105)
!126 = !DILocation(line: 18, column: 18, scope: !105)
!127 = !DILocation(line: 18, column: 26, scope: !105)
!128 = !DILocation(line: 18, column: 35, scope: !105)
!129 = !DILocation(line: 18, column: 30, scope: !105)
!130 = !DILocation(line: 18, column: 41, scope: !105)
!131 = !DILocation(line: 18, column: 38, scope: !105)
!132 = !DILocation(line: 18, column: 46, scope: !105)
!133 = !DILocation(line: 18, column: 47, scope: !105)
!134 = !DILocation(line: 18, column: 43, scope: !105)
!135 = !DILocation(line: 18, column: 3, scope: !119)
!136 = !DILocation(line: 19, column: 3, scope: !105)
!137 = !DILocation(line: 20, column: 1, scope: !105)
