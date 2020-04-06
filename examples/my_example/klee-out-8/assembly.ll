; ModuleID = 'ArrayNew.bc'
source_filename = "ArrayNew.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Test = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN4TestC2Ev = comdat any

$_ZN4TestD2Ev = comdat any

$_ZN4Test4setXEi = comdat any

$_ZN4Test4getXEv = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

@.str = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ArrayNew.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [14 x i8] c"int main(int)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"s==\22hi\22\00", align 1
@_ZL5decon = internal global i32 0, align 4, !dbg !0

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !843 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.Test*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator", align 1
  store i32 0, i32* %2, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata %class.Test** %4, metadata !846, metadata !DIExpression()), !dbg !863
  %11 = call i8* @_Znam(i64 24) #8, !dbg !864
  %12 = bitcast i8* %11 to i64*, !dbg !864
  store i64 4, i64* %12, align 8, !dbg !864
  %13 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !864
  %14 = bitcast i8* %13 to %class.Test*, !dbg !864
  %15 = getelementptr inbounds %class.Test, %class.Test* %14, i64 4, !dbg !864
  br label %16, !dbg !864

; <label>:16:                                     ; preds = %16, %1
  %17 = phi %class.Test* [ %14, %1 ], [ %18, %16 ], !dbg !864
  call void @_ZN4TestC2Ev(%class.Test* %17), !dbg !864
  %18 = getelementptr inbounds %class.Test, %class.Test* %17, i64 1, !dbg !864
  %19 = icmp eq %class.Test* %18, %15, !dbg !864
  br i1 %19, label %20, label %16, !dbg !864

; <label>:20:                                     ; preds = %16
  store %class.Test* %14, %class.Test** %4, align 8, !dbg !863
  call void @llvm.dbg.declare(metadata i32* %7, metadata !865, metadata !DIExpression()), !dbg !866
  store i32 0, i32* %7, align 4, !dbg !867
  br label %21, !dbg !869

; <label>:21:                                     ; preds = %24, %20
  %22 = load i32, i32* %7, align 4, !dbg !870
  %23 = icmp slt i32 %22, 4, !dbg !872
  br i1 %23, label %24, label %33, !dbg !873

; <label>:24:                                     ; preds = %21
  %25 = load %class.Test*, %class.Test** %4, align 8, !dbg !874
  %26 = load i32, i32* %7, align 4, !dbg !875
  %27 = sext i32 %26 to i64, !dbg !874
  %28 = getelementptr inbounds %class.Test, %class.Test* %25, i64 %27, !dbg !874
  %29 = load i32, i32* %7, align 4, !dbg !876
  %30 = add nsw i32 %29, 1, !dbg !877
  call void @_ZN4Test4setXEi(%class.Test* %28, i32 %30), !dbg !878
  %31 = load i32, i32* %7, align 4, !dbg !879
  %32 = add nsw i32 %31, 1, !dbg !879
  store i32 %32, i32* %7, align 4, !dbg !879
  br label %21, !dbg !880, !llvm.loop !881

; <label>:33:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %8, metadata !883, metadata !DIExpression()), !dbg !884
  store i32 0, i32* %8, align 4, !dbg !884
  store i32 0, i32* %7, align 4, !dbg !885
  br label %34, !dbg !887

; <label>:34:                                     ; preds = %37, %33
  %35 = load i32, i32* %7, align 4, !dbg !888
  %36 = icmp slt i32 %35, 4, !dbg !890
  br i1 %36, label %37, label %47, !dbg !891

; <label>:37:                                     ; preds = %34
  %38 = load %class.Test*, %class.Test** %4, align 8, !dbg !892
  %39 = load i32, i32* %7, align 4, !dbg !893
  %40 = sext i32 %39 to i64, !dbg !892
  %41 = getelementptr inbounds %class.Test, %class.Test* %38, i64 %40, !dbg !892
  %42 = call i32 @_ZN4Test4getXEv(%class.Test* %41), !dbg !894
  %43 = load i32, i32* %8, align 4, !dbg !895
  %44 = add nsw i32 %43, %42, !dbg !895
  store i32 %44, i32* %8, align 4, !dbg !895
  %45 = load i32, i32* %7, align 4, !dbg !896
  %46 = add nsw i32 %45, 1, !dbg !896
  store i32 %46, i32* %7, align 4, !dbg !896
  br label %34, !dbg !897, !llvm.loop !898

; <label>:47:                                     ; preds = %34
  %48 = load i32, i32* %8, align 4, !dbg !900
  %49 = icmp eq i32 %48, 10, !dbg !900
  br i1 %49, label %51, label %50, !dbg !900

; <label>:50:                                     ; preds = %47
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #9, !dbg !900
  unreachable, !dbg !900

; <label>:51:                                     ; preds = %47
  %52 = load %class.Test*, %class.Test** %4, align 8, !dbg !901
  %53 = icmp eq %class.Test* %52, null, !dbg !902
  br i1 %53, label %66, label %54, !dbg !902

; <label>:54:                                     ; preds = %51
  %55 = bitcast %class.Test* %52 to i8*, !dbg !902
  %56 = getelementptr inbounds i8, i8* %55, i64 -8, !dbg !902
  %57 = bitcast i8* %56 to i64*, !dbg !902
  %58 = load i64, i64* %57, align 4, !dbg !902
  %59 = getelementptr inbounds %class.Test, %class.Test* %52, i64 %58, !dbg !902
  %60 = icmp eq %class.Test* %52, %59, !dbg !902
  br i1 %60, label %65, label %61, !dbg !902

; <label>:61:                                     ; preds = %61, %54
  %62 = phi %class.Test* [ %59, %54 ], [ %63, %61 ], !dbg !902
  %63 = getelementptr inbounds %class.Test, %class.Test* %62, i64 -1, !dbg !902
  call void @_ZN4TestD2Ev(%class.Test* %63) #10, !dbg !902
  %64 = icmp eq %class.Test* %63, %52, !dbg !902
  br i1 %64, label %65, label %61, !dbg !902

; <label>:65:                                     ; preds = %61, %54
  call void @_ZdaPv(i8* %56) #11, !dbg !902
  br label %66, !dbg !902

; <label>:66:                                     ; preds = %65, %51
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %9, metadata !903, metadata !DIExpression()), !dbg !909
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %10) #10, !dbg !910
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %10)
          to label %67 unwind label %70, !dbg !910

; <label>:67:                                     ; preds = %66
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %10) #10, !dbg !909
  %68 = call zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !911
  br i1 %68, label %78, label %69, !dbg !911

; <label>:69:                                     ; preds = %67
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #9, !dbg !911
  unreachable, !dbg !911

; <label>:70:                                     ; preds = %66
  %71 = landingpad { i8*, i32 }
          cleanup, !dbg !912
  %72 = extractvalue { i8*, i32 } %71, 0, !dbg !912
  store i8* %72, i8** %5, align 8, !dbg !912
  %73 = extractvalue { i8*, i32 } %71, 1, !dbg !912
  store i32 %73, i32* %6, align 4, !dbg !912
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %10) #10, !dbg !909
  %74 = load i8*, i8** %5, align 8, !dbg !864
  %75 = load i32, i32* %6, align 4, !dbg !864
  %76 = insertvalue { i8*, i32 } undef, i8* %74, 0, !dbg !864
  %77 = insertvalue { i8*, i32 } %76, i32 %75, 1, !dbg !864
  resume { i8*, i32 } %77, !dbg !864

; <label>:78:                                     ; preds = %67
  store i32 0, i32* %2, align 4, !dbg !913
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %9) #10, !dbg !912
  %79 = load i32, i32* %2, align 4, !dbg !912
  ret i32 %79, !dbg !912
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4TestC2Ev(%class.Test*) unnamed_addr #3 comdat align 2 !dbg !914 {
  %2 = alloca %class.Test*, align 8
  store %class.Test* %0, %class.Test** %2, align 8
  call void @llvm.dbg.declare(metadata %class.Test** %2, metadata !915, metadata !DIExpression()), !dbg !916
  %3 = load %class.Test*, %class.Test** %2, align 8
  ret void, !dbg !917
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4TestD2Ev(%class.Test*) unnamed_addr #3 comdat align 2 !dbg !918 {
  %2 = alloca %class.Test*, align 8
  store %class.Test* %0, %class.Test** %2, align 8
  call void @llvm.dbg.declare(metadata %class.Test** %2, metadata !919, metadata !DIExpression()), !dbg !920
  %3 = load %class.Test*, %class.Test** %2, align 8
  %4 = getelementptr inbounds %class.Test, %class.Test* %3, i32 0, i32 0, !dbg !921
  %5 = load i32, i32* %4, align 4, !dbg !921
  %6 = load i32, i32* @_ZL5decon, align 4, !dbg !923
  %7 = add nsw i32 %6, %5, !dbg !923
  store i32 %7, i32* @_ZL5decon, align 4, !dbg !923
  ret void, !dbg !924
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN4Test4setXEi(%class.Test*, i32) #3 comdat align 2 !dbg !925 {
  %3 = alloca %class.Test*, align 8
  %4 = alloca i32, align 4
  store %class.Test* %0, %class.Test** %3, align 8
  call void @llvm.dbg.declare(metadata %class.Test** %3, metadata !926, metadata !DIExpression()), !dbg !927
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !928, metadata !DIExpression()), !dbg !929
  %5 = load %class.Test*, %class.Test** %3, align 8
  %6 = load i32, i32* %4, align 4, !dbg !930
  %7 = getelementptr inbounds %class.Test, %class.Test* %5, i32 0, i32 0, !dbg !931
  store i32 %6, i32* %7, align 4, !dbg !932
  ret void, !dbg !933
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN4Test4getXEv(%class.Test*) #3 comdat align 2 !dbg !934 {
  %2 = alloca %class.Test*, align 8
  store %class.Test* %0, %class.Test** %2, align 8
  call void @llvm.dbg.declare(metadata %class.Test** %2, metadata !935, metadata !DIExpression()), !dbg !936
  %3 = load %class.Test*, %class.Test** %2, align 8
  %4 = getelementptr inbounds %class.Test, %class.Test* %3, i32 0, i32 0, !dbg !937
  %5 = load i32, i32* %4, align 4, !dbg !937
  ret i32 %5, !dbg !938
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32), i8*) #3 comdat !dbg !939 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %3, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1004, metadata !DIExpression()), !dbg !1005
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8, !dbg !1006
  %6 = load i8*, i8** %4, align 8, !dbg !1007
  %7 = call i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* %5, i8* %6) #10, !dbg !1008
  %8 = icmp eq i32 %7, 0, !dbg !1009
  ret i1 %8, !dbg !1010
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #6

; Function Attrs: nounwind
declare i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"*, i8*) #6

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!839, !840, !841}
!llvm.ident = !{!842}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "decon", linkageName: "_ZL5decon", scope: !2, file: !3, line: 8, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, imports: !8)
!3 = !DIFile(filename: "ArrayNew.cpp", directory: "/home/shihua/klee/examples/my_example")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!7 = !{!0}
!8 = !{!9, !14, !34, !37, !42, !50, !58, !62, !69, !73, !77, !79, !81, !85, !97, !101, !107, !113, !115, !119, !123, !127, !131, !143, !145, !149, !153, !157, !159, !165, !169, !173, !175, !177, !181, !189, !193, !197, !201, !203, !209, !211, !218, !223, !227, !232, !236, !240, !244, !246, !248, !252, !256, !260, !262, !266, !270, !272, !274, !278, !284, !289, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !311, !315, !318, !321, !324, !326, !328, !330, !332, !334, !336, !338, !341, !343, !348, !352, !355, !358, !360, !362, !364, !366, !368, !370, !372, !374, !377, !379, !434, !438, !441, !443, !447, !451, !456, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !492, !496, !502, !506, !511, !513, !517, !521, !525, !535, !539, !543, !547, !551, !555, !559, !563, !567, !571, !575, !579, !583, !585, !589, !593, !597, !603, !607, !611, !613, !617, !621, !627, !629, !633, !637, !641, !645, !649, !653, !657, !658, !659, !660, !662, !663, !664, !665, !666, !667, !668, !672, !678, !683, !687, !689, !691, !693, !695, !702, !706, !710, !714, !718, !722, !727, !731, !733, !737, !743, !747, !752, !754, !756, !760, !764, !766, !768, !770, !772, !776, !778, !780, !784, !788, !792, !796, !800, !804, !806, !810, !814, !818, !822, !824, !826, !830, !834, !835, !836, !837, !838}
!9 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !10, entity: !11, file: !13, line: 58)
!10 = !DINamespace(name: "__gnu_debug", scope: null)
!11 = !DINamespace(name: "__debug", scope: !12)
!12 = !DINamespace(name: "std", scope: null)
!13 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/debug/debug.h", directory: "/home/shihua/klee/examples/my_example")
!14 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !15, file: !33, line: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !16, line: 6, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/shihua/klee/examples/my_example")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/shihua/klee/examples/my_example")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 13, size: 64, elements: !20, identifier: "_ZTS11__mbstate_t")
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !19, file: !18, line: 15, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !19, file: !18, line: 20, baseType: !24, size: 32, offset: 32)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !18, line: 16, size: 32, elements: !25, identifier: "_ZTSN11__mbstate_tUt_E")
!25 = !{!26, !28}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !24, file: !18, line: 18, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !24, file: !18, line: 19, baseType: !29, size: 32)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 4)
!33 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cwchar", directory: "/home/shihua/klee/examples/my_example")
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !35, file: !33, line: 139)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !36, line: 20, baseType: !27)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/shihua/klee/examples/my_example")
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !38, file: !33, line: 141)
!38 = !DISubprogram(name: "btowc", scope: !39, file: !39, line: 284, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/shihua/klee/examples/my_example")
!40 = !DISubroutineType(types: !41)
!41 = !{!35, !22}
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !43, file: !33, line: 142)
!43 = !DISubprogram(name: "fgetwc", scope: !39, file: !39, line: 727, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DISubroutineType(types: !45)
!45 = !{!35, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !48, line: 5, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/shihua/klee/examples/my_example")
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !51, file: !33, line: 143)
!51 = !DISubprogram(name: "fgetws", scope: !39, file: !39, line: 756, type: !52, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !56, !22, !57}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!57 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !59, file: !33, line: 144)
!59 = !DISubprogram(name: "fputwc", scope: !39, file: !39, line: 741, type: !60, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DISubroutineType(types: !61)
!61 = !{!35, !55, !46}
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !63, file: !33, line: 145)
!63 = !DISubprogram(name: "fputws", scope: !39, file: !39, line: 763, type: !64, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DISubroutineType(types: !65)
!65 = !{!22, !66, !57}
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !70, file: !33, line: 146)
!70 = !DISubprogram(name: "fwide", scope: !39, file: !39, line: 573, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DISubroutineType(types: !72)
!72 = !{!22, !46, !22}
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !74, file: !33, line: 147)
!74 = !DISubprogram(name: "fwprintf", scope: !39, file: !39, line: 580, type: !75, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DISubroutineType(types: !76)
!76 = !{!22, !57, !66, null}
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !78, file: !33, line: 148)
!78 = !DISubprogram(name: "fwscanf", scope: !39, file: !39, line: 621, type: !75, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !80, file: !33, line: 149)
!80 = !DISubprogram(name: "getwc", scope: !39, file: !39, line: 728, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !82, file: !33, line: 150)
!82 = !DISubprogram(name: "getwchar", scope: !39, file: !39, line: 734, type: !83, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{!35}
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !86, file: !33, line: 151)
!86 = !DISubprogram(name: "mbrlen", scope: !39, file: !39, line: 307, type: !87, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !92, !89, !95}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 62, baseType: !91)
!90 = !DIFile(filename: "/usr/include/clang/6.0.0/include/stddef.h", directory: "/home/shihua/klee/examples/my_example")
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !98, file: !33, line: 152)
!98 = !DISubprogram(name: "mbrtowc", scope: !39, file: !39, line: 296, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!89, !56, !92, !89, !95}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !102, file: !33, line: 153)
!102 = !DISubprogram(name: "mbsinit", scope: !39, file: !39, line: 292, type: !103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{!22, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !108, file: !33, line: 154)
!108 = !DISubprogram(name: "mbsrtowcs", scope: !39, file: !39, line: 337, type: !109, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DISubroutineType(types: !110)
!110 = !{!89, !56, !111, !89, !95}
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !114, file: !33, line: 155)
!114 = !DISubprogram(name: "putwc", scope: !39, file: !39, line: 742, type: !60, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !116, file: !33, line: 156)
!116 = !DISubprogram(name: "putwchar", scope: !39, file: !39, line: 748, type: !117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{!35, !55}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !120, file: !33, line: 158)
!120 = !DISubprogram(name: "swprintf", scope: !39, file: !39, line: 590, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!22, !56, !89, !66, null}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !124, file: !33, line: 160)
!124 = !DISubprogram(name: "swscanf", scope: !39, file: !39, line: 631, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!22, !66, !66, null}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !128, file: !33, line: 161)
!128 = !DISubprogram(name: "ungetwc", scope: !39, file: !39, line: 771, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!35, !35, !46}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !132, file: !33, line: 162)
!132 = !DISubprogram(name: "vfwprintf", scope: !39, file: !39, line: 598, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!22, !57, !66, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !137, identifier: "_ZTS13__va_list_tag")
!137 = !{!138, !139, !140, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !136, file: !3, baseType: !27, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !136, file: !3, baseType: !27, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !136, file: !3, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !136, file: !3, baseType: !141, size: 64, offset: 128)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !144, file: !33, line: 164)
!144 = !DISubprogram(name: "vfwscanf", scope: !39, file: !39, line: 673, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !146, file: !33, line: 167)
!146 = !DISubprogram(name: "vswprintf", scope: !39, file: !39, line: 611, type: !147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DISubroutineType(types: !148)
!148 = !{!22, !56, !89, !66, !135}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !150, file: !33, line: 170)
!150 = !DISubprogram(name: "vswscanf", scope: !39, file: !39, line: 685, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!22, !66, !66, !135}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !154, file: !33, line: 172)
!154 = !DISubprogram(name: "vwprintf", scope: !39, file: !39, line: 606, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!22, !66, !135}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !158, file: !33, line: 174)
!158 = !DISubprogram(name: "vwscanf", scope: !39, file: !39, line: 681, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !160, file: !33, line: 176)
!160 = !DISubprogram(name: "wcrtomb", scope: !39, file: !39, line: 301, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!89, !163, !55, !95}
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !166, file: !33, line: 177)
!166 = !DISubprogram(name: "wcscat", scope: !39, file: !39, line: 97, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!54, !56, !66}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !170, file: !33, line: 178)
!170 = !DISubprogram(name: "wcscmp", scope: !39, file: !39, line: 106, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!22, !67, !67}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !174, file: !33, line: 179)
!174 = !DISubprogram(name: "wcscoll", scope: !39, file: !39, line: 131, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !176, file: !33, line: 180)
!176 = !DISubprogram(name: "wcscpy", scope: !39, file: !39, line: 87, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !178, file: !33, line: 181)
!178 = !DISubprogram(name: "wcscspn", scope: !39, file: !39, line: 187, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!89, !67, !67}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !182, file: !33, line: 182)
!182 = !DISubprogram(name: "wcsftime", scope: !39, file: !39, line: 835, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!89, !56, !89, !66, !185}
!185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !39, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !190, file: !33, line: 183)
!190 = !DISubprogram(name: "wcslen", scope: !39, file: !39, line: 222, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{!89, !67}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !194, file: !33, line: 184)
!194 = !DISubprogram(name: "wcsncat", scope: !39, file: !39, line: 101, type: !195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DISubroutineType(types: !196)
!196 = !{!54, !56, !66, !89}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !198, file: !33, line: 185)
!198 = !DISubprogram(name: "wcsncmp", scope: !39, file: !39, line: 109, type: !199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DISubroutineType(types: !200)
!200 = !{!22, !67, !67, !89}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !202, file: !33, line: 186)
!202 = !DISubprogram(name: "wcsncpy", scope: !39, file: !39, line: 92, type: !195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !204, file: !33, line: 187)
!204 = !DISubprogram(name: "wcsrtombs", scope: !39, file: !39, line: 343, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!89, !163, !207, !89, !95}
!207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !210, file: !33, line: 188)
!210 = !DISubprogram(name: "wcsspn", scope: !39, file: !39, line: 191, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !212, file: !33, line: 189)
!212 = !DISubprogram(name: "wcstod", scope: !39, file: !39, line: 377, type: !213, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !66, !216}
!215 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !219, file: !33, line: 191)
!219 = !DISubprogram(name: "wcstof", scope: !39, file: !39, line: 382, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !66, !216}
!222 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !224, file: !33, line: 193)
!224 = !DISubprogram(name: "wcstok", scope: !39, file: !39, line: 217, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!54, !56, !66, !216}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !228, file: !33, line: 194)
!228 = !DISubprogram(name: "wcstol", scope: !39, file: !39, line: 428, type: !229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !66, !216, !22}
!231 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !233, file: !33, line: 195)
!233 = !DISubprogram(name: "wcstoul", scope: !39, file: !39, line: 433, type: !234, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DISubroutineType(types: !235)
!235 = !{!91, !66, !216, !22}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !237, file: !33, line: 196)
!237 = !DISubprogram(name: "wcsxfrm", scope: !39, file: !39, line: 135, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!89, !56, !66, !89}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !241, file: !33, line: 197)
!241 = !DISubprogram(name: "wctob", scope: !39, file: !39, line: 288, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!22, !35}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !245, file: !33, line: 198)
!245 = !DISubprogram(name: "wmemcmp", scope: !39, file: !39, line: 258, type: !199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !247, file: !33, line: 199)
!247 = !DISubprogram(name: "wmemcpy", scope: !39, file: !39, line: 262, type: !195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !249, file: !33, line: 200)
!249 = !DISubprogram(name: "wmemmove", scope: !39, file: !39, line: 267, type: !250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{!54, !54, !67, !89}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !253, file: !33, line: 201)
!253 = !DISubprogram(name: "wmemset", scope: !39, file: !39, line: 271, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!54, !54, !55, !89}
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !257, file: !33, line: 202)
!257 = !DISubprogram(name: "wprintf", scope: !39, file: !39, line: 587, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubroutineType(types: !259)
!259 = !{!22, !66, null}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !261, file: !33, line: 203)
!261 = !DISubprogram(name: "wscanf", scope: !39, file: !39, line: 628, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !263, file: !33, line: 204)
!263 = !DISubprogram(name: "wcschr", scope: !39, file: !39, line: 164, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!54, !67, !55}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !267, file: !33, line: 205)
!267 = !DISubprogram(name: "wcspbrk", scope: !39, file: !39, line: 201, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!54, !67, !67}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !271, file: !33, line: 206)
!271 = !DISubprogram(name: "wcsrchr", scope: !39, file: !39, line: 174, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !273, file: !33, line: 207)
!273 = !DISubprogram(name: "wcsstr", scope: !39, file: !39, line: 212, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !275, file: !33, line: 208)
!275 = !DISubprogram(name: "wmemchr", scope: !39, file: !39, line: 253, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DISubroutineType(types: !277)
!277 = !{!54, !67, !55, !89}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !280, file: !33, line: 248)
!279 = !DINamespace(name: "__gnu_cxx", scope: null)
!280 = !DISubprogram(name: "wcstold", scope: !39, file: !39, line: 384, type: !281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !66, !216}
!283 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !285, file: !33, line: 257)
!285 = !DISubprogram(name: "wcstoll", scope: !39, file: !39, line: 441, type: !286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !66, !216, !22}
!288 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !290, file: !33, line: 258)
!290 = !DISubprogram(name: "wcstoull", scope: !39, file: !39, line: 448, type: !291, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !66, !216, !22}
!293 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !280, file: !33, line: 264)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !285, file: !33, line: 265)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !290, file: !33, line: 266)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !219, file: !33, line: 280)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !144, file: !33, line: 283)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !150, file: !33, line: 286)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !158, file: !33, line: 289)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !280, file: !33, line: 293)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !285, file: !33, line: 294)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !290, file: !33, line: 295)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !305, file: !310, line: 48)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !306, line: 24, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/shihua/klee/examples/my_example")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !308, line: 36, baseType: !309)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/shihua/klee/examples/my_example")
!309 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!310 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdint", directory: "/home/shihua/klee/examples/my_example")
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !312, file: !310, line: 49)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !306, line: 25, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !308, line: 38, baseType: !314)
!314 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !316, file: !310, line: 50)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !306, line: 26, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !308, line: 40, baseType: !22)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !319, file: !310, line: 51)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !306, line: 27, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !308, line: 43, baseType: !231)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !322, file: !310, line: 53)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !323, line: 68, baseType: !309)
!323 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/shihua/klee/examples/my_example")
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !325, file: !310, line: 54)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !323, line: 70, baseType: !231)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !327, file: !310, line: 55)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !323, line: 71, baseType: !231)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !329, file: !310, line: 56)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !323, line: 72, baseType: !231)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !331, file: !310, line: 58)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !323, line: 43, baseType: !309)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !333, file: !310, line: 59)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !323, line: 44, baseType: !314)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !335, file: !310, line: 60)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !323, line: 45, baseType: !22)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !337, file: !310, line: 61)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !323, line: 47, baseType: !231)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !339, file: !310, line: 63)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !323, line: 111, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !308, line: 61, baseType: !231)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !342, file: !310, line: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !323, line: 97, baseType: !231)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !344, file: !310, line: 66)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !345, line: 24, baseType: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/shihua/klee/examples/my_example")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !308, line: 37, baseType: !347)
!347 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !349, file: !310, line: 67)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !345, line: 25, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !308, line: 39, baseType: !351)
!351 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !353, file: !310, line: 68)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !345, line: 26, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !308, line: 41, baseType: !27)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !356, file: !310, line: 69)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !345, line: 27, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !308, line: 44, baseType: !91)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !359, file: !310, line: 71)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !323, line: 81, baseType: !347)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !361, file: !310, line: 72)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !323, line: 83, baseType: !91)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !363, file: !310, line: 73)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !323, line: 84, baseType: !91)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !365, file: !310, line: 74)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !323, line: 85, baseType: !91)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !367, file: !310, line: 76)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !323, line: 54, baseType: !347)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !369, file: !310, line: 77)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !323, line: 55, baseType: !351)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !371, file: !310, line: 78)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !323, line: 56, baseType: !27)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !373, file: !310, line: 79)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !323, line: 58, baseType: !91)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !375, file: !310, line: 81)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !323, line: 112, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !308, line: 62, baseType: !91)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !378, file: !310, line: 82)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !323, line: 100, baseType: !91)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !380, file: !381, line: 57)
!380 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !382, file: !381, line: 79, size: 64, elements: !383, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!381 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/exception_ptr.h", directory: "/home/shihua/klee/examples/my_example")
!382 = !DINamespace(name: "__exception_ptr", scope: !12)
!383 = !{!384, !385, !389, !392, !393, !398, !399, !403, !409, !413, !417, !420, !421, !424, !427}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !380, file: !381, line: 81, baseType: !141, size: 64)
!385 = !DISubprogram(name: "exception_ptr", scope: !380, file: !381, line: 83, type: !386, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !141}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!389 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !380, file: !381, line: 85, type: !390, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !388}
!392 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !380, file: !381, line: 86, type: !390, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !380, file: !381, line: 88, type: !394, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!141, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!398 = !DISubprogram(name: "exception_ptr", scope: !380, file: !381, line: 96, type: !390, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!399 = !DISubprogram(name: "exception_ptr", scope: !380, file: !381, line: 98, type: !400, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !388, !402}
!402 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !397, size: 64)
!403 = !DISubprogram(name: "exception_ptr", scope: !380, file: !381, line: 101, type: !404, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !388, !406}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !12, file: !407, line: 235, baseType: !408)
!407 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/x86_64-linux-gnu/c++/7.4.0/bits/c++config.h", directory: "/home/shihua/klee/examples/my_example")
!408 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!409 = !DISubprogram(name: "exception_ptr", scope: !380, file: !381, line: 105, type: !410, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !388, !412}
!412 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !380, size: 64)
!413 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !380, file: !381, line: 118, type: !414, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!416, !388, !402}
!416 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !380, size: 64)
!417 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !380, file: !381, line: 122, type: !418, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{!416, !388, !412}
!420 = !DISubprogram(name: "~exception_ptr", scope: !380, file: !381, line: 129, type: !390, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!421 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !380, file: !381, line: 132, type: !422, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !388, !416}
!424 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !380, file: !381, line: 144, type: !425, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!425 = !DISubroutineType(types: !426)
!426 = !{!6, !396}
!427 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !380, file: !381, line: 153, type: !428, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !396}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !12, file: !433, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!433 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/typeinfo", directory: "/home/shihua/klee/examples/my_example")
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !382, entity: !435, file: !381, line: 73)
!435 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !12, file: !381, line: 69, type: !436, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !380}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !439, file: !440, line: 44)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !12, file: !407, line: 231, baseType: !91)
!440 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/ext/new_allocator.h", directory: "/home/shihua/klee/examples/my_example")
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !442, file: !440, line: 45)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !12, file: !407, line: 232, baseType: !231)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !444, file: !446, line: 53)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !445, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!445 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/shihua/klee/examples/my_example")
!446 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/clocale", directory: "/home/shihua/klee/examples/my_example")
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !448, file: !446, line: 54)
!448 = !DISubprogram(name: "setlocale", scope: !445, file: !445, line: 122, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DISubroutineType(types: !450)
!450 = !{!164, !22, !93}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !452, file: !446, line: 55)
!452 = !DISubprogram(name: "localeconv", scope: !445, file: !445, line: 125, type: !453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !457, file: !461, line: 64)
!457 = !DISubprogram(name: "isalnum", scope: !458, file: !458, line: 108, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/shihua/klee/examples/my_example")
!459 = !DISubroutineType(types: !460)
!460 = !{!22, !22}
!461 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cctype", directory: "/home/shihua/klee/examples/my_example")
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !463, file: !461, line: 65)
!463 = !DISubprogram(name: "isalpha", scope: !458, file: !458, line: 109, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !465, file: !461, line: 66)
!465 = !DISubprogram(name: "iscntrl", scope: !458, file: !458, line: 110, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !467, file: !461, line: 67)
!467 = !DISubprogram(name: "isdigit", scope: !458, file: !458, line: 111, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !469, file: !461, line: 68)
!469 = !DISubprogram(name: "isgraph", scope: !458, file: !458, line: 113, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !471, file: !461, line: 69)
!471 = !DISubprogram(name: "islower", scope: !458, file: !458, line: 112, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !473, file: !461, line: 70)
!473 = !DISubprogram(name: "isprint", scope: !458, file: !458, line: 114, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !475, file: !461, line: 71)
!475 = !DISubprogram(name: "ispunct", scope: !458, file: !458, line: 115, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !477, file: !461, line: 72)
!477 = !DISubprogram(name: "isspace", scope: !458, file: !458, line: 116, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !479, file: !461, line: 73)
!479 = !DISubprogram(name: "isupper", scope: !458, file: !458, line: 117, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !481, file: !461, line: 74)
!481 = !DISubprogram(name: "isxdigit", scope: !458, file: !458, line: 118, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !483, file: !461, line: 75)
!483 = !DISubprogram(name: "tolower", scope: !458, file: !458, line: 122, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !485, file: !461, line: 76)
!485 = !DISubprogram(name: "toupper", scope: !458, file: !458, line: 125, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !487, file: !461, line: 87)
!487 = !DISubprogram(name: "isblank", scope: !458, file: !458, line: 130, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !489, file: !491, line: 52)
!489 = !DISubprogram(name: "abs", scope: !490, file: !490, line: 837, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!490 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/shihua/klee/examples/my_example")
!491 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/std_abs.h", directory: "/home/shihua/klee/examples/my_example")
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !493, file: !495, line: 127)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !490, line: 62, baseType: !494)
!494 = !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!495 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdlib", directory: "/home/shihua/klee/examples/my_example")
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !497, file: !495, line: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !490, line: 70, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 66, size: 128, elements: !499, identifier: "_ZTS6ldiv_t")
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !498, file: !490, line: 68, baseType: !231, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !498, file: !490, line: 69, baseType: !231, size: 64, offset: 64)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !503, file: !495, line: 130)
!503 = !DISubprogram(name: "abort", scope: !490, file: !490, line: 588, type: !504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!504 = !DISubroutineType(types: !505)
!505 = !{null}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !507, file: !495, line: 134)
!507 = !DISubprogram(name: "atexit", scope: !490, file: !490, line: 592, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{!22, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !512, file: !495, line: 137)
!512 = !DISubprogram(name: "at_quick_exit", scope: !490, file: !490, line: 597, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !514, file: !495, line: 140)
!514 = !DISubprogram(name: "atof", scope: !490, file: !490, line: 101, type: !515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!215, !93}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !518, file: !495, line: 141)
!518 = !DISubprogram(name: "atoi", scope: !490, file: !490, line: 104, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!22, !93}
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !522, file: !495, line: 142)
!522 = !DISubprogram(name: "atol", scope: !490, file: !490, line: 107, type: !523, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubroutineType(types: !524)
!524 = !{!231, !93}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !526, file: !495, line: 143)
!526 = !DISubprogram(name: "bsearch", scope: !490, file: !490, line: 817, type: !527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{!141, !529, !529, !89, !89, !531}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !490, line: 805, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!22, !529, !529}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !536, file: !495, line: 144)
!536 = !DISubprogram(name: "calloc", scope: !490, file: !490, line: 541, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!141, !89, !89}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !540, file: !495, line: 145)
!540 = !DISubprogram(name: "div", scope: !490, file: !490, line: 849, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!493, !22, !22}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !544, file: !495, line: 146)
!544 = !DISubprogram(name: "exit", scope: !490, file: !490, line: 614, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !22}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !548, file: !495, line: 147)
!548 = !DISubprogram(name: "free", scope: !490, file: !490, line: 563, type: !549, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !141}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !552, file: !495, line: 148)
!552 = !DISubprogram(name: "getenv", scope: !490, file: !490, line: 631, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!164, !93}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !556, file: !495, line: 149)
!556 = !DISubprogram(name: "labs", scope: !490, file: !490, line: 838, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!231, !231}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !560, file: !495, line: 150)
!560 = !DISubprogram(name: "ldiv", scope: !490, file: !490, line: 851, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!497, !231, !231}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !564, file: !495, line: 151)
!564 = !DISubprogram(name: "malloc", scope: !490, file: !490, line: 539, type: !565, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DISubroutineType(types: !566)
!566 = !{!141, !89}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !568, file: !495, line: 153)
!568 = !DISubprogram(name: "mblen", scope: !490, file: !490, line: 919, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!569 = !DISubroutineType(types: !570)
!570 = !{!22, !93, !89}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !572, file: !495, line: 154)
!572 = !DISubprogram(name: "mbstowcs", scope: !490, file: !490, line: 930, type: !573, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DISubroutineType(types: !574)
!574 = !{!89, !56, !92, !89}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !576, file: !495, line: 155)
!576 = !DISubprogram(name: "mbtowc", scope: !490, file: !490, line: 922, type: !577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DISubroutineType(types: !578)
!578 = !{!22, !56, !92, !89}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !580, file: !495, line: 157)
!580 = !DISubprogram(name: "qsort", scope: !490, file: !490, line: 827, type: !581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !141, !89, !89, !531}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !584, file: !495, line: 160)
!584 = !DISubprogram(name: "quick_exit", scope: !490, file: !490, line: 620, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !586, file: !495, line: 163)
!586 = !DISubprogram(name: "rand", scope: !490, file: !490, line: 453, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!22}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !590, file: !495, line: 164)
!590 = !DISubprogram(name: "realloc", scope: !490, file: !490, line: 549, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!141, !141, !89}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !594, file: !495, line: 165)
!594 = !DISubprogram(name: "srand", scope: !490, file: !490, line: 455, type: !595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !27}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !598, file: !495, line: 166)
!598 = !DISubprogram(name: "strtod", scope: !490, file: !490, line: 117, type: !599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubroutineType(types: !600)
!600 = !{!215, !92, !601}
!601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !604, file: !495, line: 167)
!604 = !DISubprogram(name: "strtol", scope: !490, file: !490, line: 176, type: !605, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DISubroutineType(types: !606)
!606 = !{!231, !92, !601, !22}
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !608, file: !495, line: 168)
!608 = !DISubprogram(name: "strtoul", scope: !490, file: !490, line: 180, type: !609, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!609 = !DISubroutineType(types: !610)
!610 = !{!91, !92, !601, !22}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !612, file: !495, line: 169)
!612 = !DISubprogram(name: "system", scope: !490, file: !490, line: 781, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !614, file: !495, line: 171)
!614 = !DISubprogram(name: "wcstombs", scope: !490, file: !490, line: 933, type: !615, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!615 = !DISubroutineType(types: !616)
!616 = !{!89, !163, !66, !89}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !618, file: !495, line: 172)
!618 = !DISubprogram(name: "wctomb", scope: !490, file: !490, line: 926, type: !619, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!619 = !DISubroutineType(types: !620)
!620 = !{!22, !164, !55}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !622, file: !495, line: 200)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !490, line: 80, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 76, size: 128, elements: !624, identifier: "_ZTS7lldiv_t")
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !623, file: !490, line: 78, baseType: !288, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !623, file: !490, line: 79, baseType: !288, size: 64, offset: 64)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !628, file: !495, line: 206)
!628 = !DISubprogram(name: "_Exit", scope: !490, file: !490, line: 626, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !630, file: !495, line: 210)
!630 = !DISubprogram(name: "llabs", scope: !490, file: !490, line: 841, type: !631, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!631 = !DISubroutineType(types: !632)
!632 = !{!288, !288}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !634, file: !495, line: 216)
!634 = !DISubprogram(name: "lldiv", scope: !490, file: !490, line: 855, type: !635, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DISubroutineType(types: !636)
!636 = !{!622, !288, !288}
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !638, file: !495, line: 227)
!638 = !DISubprogram(name: "atoll", scope: !490, file: !490, line: 112, type: !639, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!639 = !DISubroutineType(types: !640)
!640 = !{!288, !93}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !642, file: !495, line: 228)
!642 = !DISubprogram(name: "strtoll", scope: !490, file: !490, line: 200, type: !643, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!643 = !DISubroutineType(types: !644)
!644 = !{!288, !92, !601, !22}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !646, file: !495, line: 229)
!646 = !DISubprogram(name: "strtoull", scope: !490, file: !490, line: 205, type: !647, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!647 = !DISubroutineType(types: !648)
!648 = !{!293, !92, !601, !22}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !650, file: !495, line: 231)
!650 = !DISubprogram(name: "strtof", scope: !490, file: !490, line: 123, type: !651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{!222, !92, !601}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !654, file: !495, line: 232)
!654 = !DISubprogram(name: "strtold", scope: !490, file: !490, line: 126, type: !655, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!655 = !DISubroutineType(types: !656)
!656 = !{!283, !92, !601}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !622, file: !495, line: 240)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !628, file: !495, line: 242)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !630, file: !495, line: 244)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !661, file: !495, line: 245)
!661 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !279, file: !495, line: 213, type: !635, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !634, file: !495, line: 246)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !638, file: !495, line: 248)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !650, file: !495, line: 249)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !642, file: !495, line: 250)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !646, file: !495, line: 251)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !654, file: !495, line: 252)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !669, file: !671, line: 98)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !670, line: 7, baseType: !49)
!670 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/shihua/klee/examples/my_example")
!671 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdio", directory: "/home/shihua/klee/examples/my_example")
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !673, file: !671, line: 99)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !674, line: 78, baseType: !675)
!674 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/shihua/klee/examples/my_example")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !676, line: 30, baseType: !677)
!676 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/shihua/klee/examples/my_example")
!677 = !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !679, file: !671, line: 101)
!679 = !DISubprogram(name: "clearerr", scope: !674, file: !674, line: 757, type: !680, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !684, file: !671, line: 102)
!684 = !DISubprogram(name: "fclose", scope: !674, file: !674, line: 199, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DISubroutineType(types: !686)
!686 = !{!22, !682}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !688, file: !671, line: 103)
!688 = !DISubprogram(name: "feof", scope: !674, file: !674, line: 759, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !690, file: !671, line: 104)
!690 = !DISubprogram(name: "ferror", scope: !674, file: !674, line: 761, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !692, file: !671, line: 105)
!692 = !DISubprogram(name: "fflush", scope: !674, file: !674, line: 204, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !694, file: !671, line: 106)
!694 = !DISubprogram(name: "fgetc", scope: !674, file: !674, line: 477, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !696, file: !671, line: 107)
!696 = !DISubprogram(name: "fgetpos", scope: !674, file: !674, line: 731, type: !697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DISubroutineType(types: !698)
!698 = !{!22, !699, !700}
!699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !682)
!700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !703, file: !671, line: 108)
!703 = !DISubprogram(name: "fgets", scope: !674, file: !674, line: 564, type: !704, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!704 = !DISubroutineType(types: !705)
!705 = !{!164, !163, !22, !699}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !707, file: !671, line: 109)
!707 = !DISubprogram(name: "fopen", scope: !674, file: !674, line: 232, type: !708, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!708 = !DISubroutineType(types: !709)
!709 = !{!682, !92, !92}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !711, file: !671, line: 110)
!711 = !DISubprogram(name: "fprintf", scope: !674, file: !674, line: 312, type: !712, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!712 = !DISubroutineType(types: !713)
!713 = !{!22, !699, !92, null}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !715, file: !671, line: 111)
!715 = !DISubprogram(name: "fputc", scope: !674, file: !674, line: 517, type: !716, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!716 = !DISubroutineType(types: !717)
!717 = !{!22, !22, !682}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !719, file: !671, line: 112)
!719 = !DISubprogram(name: "fputs", scope: !674, file: !674, line: 626, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!720 = !DISubroutineType(types: !721)
!721 = !{!22, !92, !699}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !723, file: !671, line: 113)
!723 = !DISubprogram(name: "fread", scope: !674, file: !674, line: 646, type: !724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!724 = !DISubroutineType(types: !725)
!725 = !{!89, !726, !89, !89, !699}
!726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !728, file: !671, line: 114)
!728 = !DISubprogram(name: "freopen", scope: !674, file: !674, line: 238, type: !729, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DISubroutineType(types: !730)
!730 = !{!682, !92, !92, !699}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !732, file: !671, line: 115)
!732 = !DISubprogram(name: "fscanf", scope: !674, file: !674, line: 377, type: !712, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !734, file: !671, line: 116)
!734 = !DISubprogram(name: "fseek", scope: !674, file: !674, line: 684, type: !735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!735 = !DISubroutineType(types: !736)
!736 = !{!22, !682, !231, !22}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !738, file: !671, line: 117)
!738 = !DISubprogram(name: "fsetpos", scope: !674, file: !674, line: 736, type: !739, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!739 = !DISubroutineType(types: !740)
!740 = !{!22, !682, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !744, file: !671, line: 118)
!744 = !DISubprogram(name: "ftell", scope: !674, file: !674, line: 689, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!745 = !DISubroutineType(types: !746)
!746 = !{!231, !682}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !748, file: !671, line: 119)
!748 = !DISubprogram(name: "fwrite", scope: !674, file: !674, line: 652, type: !749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!89, !751, !89, !89, !699}
!751 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !529)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !753, file: !671, line: 120)
!753 = !DISubprogram(name: "getc", scope: !674, file: !674, line: 478, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !755, file: !671, line: 121)
!755 = !DISubprogram(name: "getchar", scope: !674, file: !674, line: 484, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !757, file: !671, line: 126)
!757 = !DISubprogram(name: "perror", scope: !674, file: !674, line: 775, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !93}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !761, file: !671, line: 127)
!761 = !DISubprogram(name: "printf", scope: !674, file: !674, line: 318, type: !762, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DISubroutineType(types: !763)
!763 = !{!22, !92, null}
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !765, file: !671, line: 128)
!765 = !DISubprogram(name: "putc", scope: !674, file: !674, line: 518, type: !716, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !767, file: !671, line: 129)
!767 = !DISubprogram(name: "putchar", scope: !674, file: !674, line: 524, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !769, file: !671, line: 130)
!769 = !DISubprogram(name: "puts", scope: !674, file: !674, line: 632, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !771, file: !671, line: 131)
!771 = !DISubprogram(name: "remove", scope: !674, file: !674, line: 144, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !773, file: !671, line: 132)
!773 = !DISubprogram(name: "rename", scope: !674, file: !674, line: 146, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!22, !93, !93}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !777, file: !671, line: 133)
!777 = !DISubprogram(name: "rewind", scope: !674, file: !674, line: 694, type: !680, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !779, file: !671, line: 134)
!779 = !DISubprogram(name: "scanf", scope: !674, file: !674, line: 383, type: !762, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !781, file: !671, line: 135)
!781 = !DISubprogram(name: "setbuf", scope: !674, file: !674, line: 290, type: !782, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !699, !163}
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !785, file: !671, line: 136)
!785 = !DISubprogram(name: "setvbuf", scope: !674, file: !674, line: 294, type: !786, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DISubroutineType(types: !787)
!787 = !{!22, !699, !163, !22, !89}
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !789, file: !671, line: 137)
!789 = !DISubprogram(name: "sprintf", scope: !674, file: !674, line: 320, type: !790, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DISubroutineType(types: !791)
!791 = !{!22, !163, !92, null}
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !793, file: !671, line: 138)
!793 = !DISubprogram(name: "sscanf", scope: !674, file: !674, line: 385, type: !794, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!794 = !DISubroutineType(types: !795)
!795 = !{!22, !92, !92, null}
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !797, file: !671, line: 139)
!797 = !DISubprogram(name: "tmpfile", scope: !674, file: !674, line: 159, type: !798, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!798 = !DISubroutineType(types: !799)
!799 = !{!682}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !801, file: !671, line: 141)
!801 = !DISubprogram(name: "tmpnam", scope: !674, file: !674, line: 173, type: !802, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DISubroutineType(types: !803)
!803 = !{!164, !164}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !805, file: !671, line: 143)
!805 = !DISubprogram(name: "ungetc", scope: !674, file: !674, line: 639, type: !716, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !807, file: !671, line: 144)
!807 = !DISubprogram(name: "vfprintf", scope: !674, file: !674, line: 327, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!22, !699, !92, !135}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !811, file: !671, line: 145)
!811 = !DISubprogram(name: "vprintf", scope: !674, file: !674, line: 333, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!22, !92, !135}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !815, file: !671, line: 146)
!815 = !DISubprogram(name: "vsprintf", scope: !674, file: !674, line: 335, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{!22, !163, !92, !135}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !819, file: !671, line: 175)
!819 = !DISubprogram(name: "snprintf", scope: !674, file: !674, line: 340, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!22, !163, !89, !92, null}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !823, file: !671, line: 176)
!823 = !DISubprogram(name: "vfscanf", scope: !674, file: !674, line: 420, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !825, file: !671, line: 177)
!825 = !DISubprogram(name: "vscanf", scope: !674, file: !674, line: 428, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !827, file: !671, line: 178)
!827 = !DISubprogram(name: "vsnprintf", scope: !674, file: !674, line: 344, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!22, !163, !89, !92, !135}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !279, entity: !831, file: !671, line: 179)
!831 = !DISubprogram(name: "vsscanf", scope: !674, file: !674, line: 432, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!22, !92, !92, !135}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !819, file: !671, line: 185)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !823, file: !671, line: 186)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !825, file: !671, line: 187)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !827, file: !671, line: 188)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !12, entity: !831, file: !671, line: 189)
!839 = !{i32 2, !"Dwarf Version", i32 4}
!840 = !{i32 2, !"Debug Info Version", i32 3}
!841 = !{i32 1, !"wchar_size", i32 4}
!842 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!843 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 22, type: !459, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!844 = !DILocalVariable(name: "argc", arg: 1, scope: !843, file: !3, line: 22, type: !22)
!845 = !DILocation(line: 22, column: 14, scope: !843)
!846 = !DILocalVariable(name: "rt", scope: !843, file: !3, line: 23, type: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Test", file: !3, line: 10, size: 32, elements: !849, identifier: "_ZTS4Test")
!849 = !{!850, !851, !855, !858, !859, !862}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !848, file: !3, line: 11, baseType: !22, size: 32)
!851 = !DISubprogram(name: "Test", scope: !848, file: !3, line: 14, type: !852, isLocal: false, isDefinition: false, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!855 = !DISubprogram(name: "Test", scope: !848, file: !3, line: 15, type: !856, isLocal: false, isDefinition: false, scopeLine: 15, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !854, !22}
!858 = !DISubprogram(name: "~Test", scope: !848, file: !3, line: 16, type: !852, isLocal: false, isDefinition: false, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!859 = !DISubprogram(name: "getX", linkageName: "_ZN4Test4getXEv", scope: !848, file: !3, line: 18, type: !860, isLocal: false, isDefinition: false, scopeLine: 18, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{!22, !854}
!862 = !DISubprogram(name: "setX", linkageName: "_ZN4Test4setXEi", scope: !848, file: !3, line: 19, type: !856, isLocal: false, isDefinition: false, scopeLine: 19, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!863 = !DILocation(line: 23, column: 9, scope: !843)
!864 = !DILocation(line: 23, column: 14, scope: !843)
!865 = !DILocalVariable(name: "i", scope: !843, file: !3, line: 24, type: !22)
!866 = !DILocation(line: 24, column: 7, scope: !843)
!867 = !DILocation(line: 26, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !843, file: !3, line: 26, column: 3)
!869 = !DILocation(line: 26, column: 8, scope: !868)
!870 = !DILocation(line: 26, column: 13, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 26, column: 3)
!872 = !DILocation(line: 26, column: 14, scope: !871)
!873 = !DILocation(line: 26, column: 3, scope: !868)
!874 = !DILocation(line: 27, column: 5, scope: !871)
!875 = !DILocation(line: 27, column: 8, scope: !871)
!876 = !DILocation(line: 27, column: 16, scope: !871)
!877 = !DILocation(line: 27, column: 17, scope: !871)
!878 = !DILocation(line: 27, column: 11, scope: !871)
!879 = !DILocation(line: 26, column: 19, scope: !871)
!880 = !DILocation(line: 26, column: 3, scope: !871)
!881 = distinct !{!881, !873, !882}
!882 = !DILocation(line: 27, column: 19, scope: !868)
!883 = !DILocalVariable(name: "sum", scope: !843, file: !3, line: 29, type: !22)
!884 = !DILocation(line: 29, column: 7, scope: !843)
!885 = !DILocation(line: 30, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !843, file: !3, line: 30, column: 3)
!887 = !DILocation(line: 30, column: 8, scope: !886)
!888 = !DILocation(line: 30, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 30, column: 3)
!890 = !DILocation(line: 30, column: 14, scope: !889)
!891 = !DILocation(line: 30, column: 3, scope: !886)
!892 = !DILocation(line: 31, column: 12, scope: !889)
!893 = !DILocation(line: 31, column: 15, scope: !889)
!894 = !DILocation(line: 31, column: 18, scope: !889)
!895 = !DILocation(line: 31, column: 9, scope: !889)
!896 = !DILocation(line: 30, column: 19, scope: !889)
!897 = !DILocation(line: 30, column: 3, scope: !889)
!898 = distinct !{!898, !891, !899}
!899 = !DILocation(line: 31, column: 23, scope: !886)
!900 = !DILocation(line: 33, column: 3, scope: !843)
!901 = !DILocation(line: 35, column: 12, scope: !843)
!902 = !DILocation(line: 35, column: 3, scope: !843)
!903 = !DILocalVariable(name: "s", scope: !843, file: !3, line: 37, type: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !906, file: !905, line: 74, baseType: !907)
!905 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/stringfwd.h", directory: "/home/shihua/klee/examples/my_example")
!906 = !DINamespace(name: "__cxx11", scope: !12, exportSymbols: true)
!907 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !906, file: !908, line: 1607, flags: DIFlagFwdDecl, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!908 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/basic_string.tcc", directory: "/home/shihua/klee/examples/my_example")
!909 = !DILocation(line: 37, column: 15, scope: !843)
!910 = !DILocation(line: 37, column: 17, scope: !843)
!911 = !DILocation(line: 38, column: 3, scope: !843)
!912 = !DILocation(line: 41, column: 1, scope: !843)
!913 = !DILocation(line: 40, column: 3, scope: !843)
!914 = distinct !DISubprogram(name: "Test", linkageName: "_ZN4TestC2Ev", scope: !848, file: !3, line: 14, type: !852, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !851, variables: !4)
!915 = !DILocalVariable(name: "this", arg: 1, scope: !914, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!916 = !DILocation(line: 0, scope: !914)
!917 = !DILocation(line: 14, column: 11, scope: !914)
!918 = distinct !DISubprogram(name: "~Test", linkageName: "_ZN4TestD2Ev", scope: !848, file: !3, line: 16, type: !852, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !858, variables: !4)
!919 = !DILocalVariable(name: "this", arg: 1, scope: !918, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!920 = !DILocation(line: 0, scope: !918)
!921 = !DILocation(line: 16, column: 22, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 16, column: 11)
!923 = !DILocation(line: 16, column: 19, scope: !922)
!924 = !DILocation(line: 16, column: 25, scope: !918)
!925 = distinct !DISubprogram(name: "setX", linkageName: "_ZN4Test4setXEi", scope: !848, file: !3, line: 19, type: !856, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !862, variables: !4)
!926 = !DILocalVariable(name: "this", arg: 1, scope: !925, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!927 = !DILocation(line: 0, scope: !925)
!928 = !DILocalVariable(name: "_x", arg: 2, scope: !925, file: !3, line: 19, type: !22)
!929 = !DILocation(line: 19, column: 17, scope: !925)
!930 = !DILocation(line: 19, column: 27, scope: !925)
!931 = !DILocation(line: 19, column: 23, scope: !925)
!932 = !DILocation(line: 19, column: 25, scope: !925)
!933 = !DILocation(line: 19, column: 31, scope: !925)
!934 = distinct !DISubprogram(name: "getX", linkageName: "_ZN4Test4getXEv", scope: !848, file: !3, line: 18, type: !860, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !859, variables: !4)
!935 = !DILocalVariable(name: "this", arg: 1, scope: !934, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!936 = !DILocation(line: 0, scope: !934)
!937 = !DILocation(line: 18, column: 23, scope: !934)
!938 = !DILocation(line: 18, column: 16, scope: !934)
!939 = distinct !DISubprogram(name: "operator==<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_", scope: !12, file: !940, line: 6043, type: !941, isLocal: false, isDefinition: true, scopeLine: 6045, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !945, variables: !4)
!940 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/basic_string.h", directory: "/home/shihua/klee/examples/my_example")
!941 = !DISubroutineType(types: !942)
!942 = !{!6, !943, !93}
!943 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!945 = !{!946, !947, !999}
!946 = !DITemplateTypeParameter(name: "_CharT", type: !30)
!947 = !DITemplateTypeParameter(name: "_Traits", type: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !12, file: !949, line: 275, size: 8, elements: !950, templateParams: !998, identifier: "_ZTSSt11char_traitsIcE")
!949 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/char_traits.h", directory: "/home/shihua/klee/examples/my_example")
!950 = !{!951, !958, !961, !962, !966, !969, !972, !976, !977, !980, !986, !989, !992, !995}
!951 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !948, file: !949, line: 284, type: !952, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !954, !956}
!954 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !948, file: !949, line: 277, baseType: !30)
!956 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!958 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !948, file: !949, line: 288, type: !959, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!959 = !DISubroutineType(types: !960)
!960 = !{!6, !956, !956}
!961 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !948, file: !949, line: 292, type: !959, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!962 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !948, file: !949, line: 300, type: !963, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!963 = !DISubroutineType(types: !964)
!964 = !{!22, !965, !965, !439}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!966 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !948, file: !949, line: 314, type: !967, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!967 = !DISubroutineType(types: !968)
!968 = !{!439, !965}
!969 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !948, file: !949, line: 324, type: !970, isLocal: false, isDefinition: false, scopeLine: 324, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!970 = !DISubroutineType(types: !971)
!971 = !{!965, !965, !439, !956}
!972 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !948, file: !949, line: 338, type: !973, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!975, !975, !965, !439}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!976 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !948, file: !949, line: 346, type: !973, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!977 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !948, file: !949, line: 354, type: !978, isLocal: false, isDefinition: false, scopeLine: 354, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!978 = !DISubroutineType(types: !979)
!979 = !{!975, !975, !439, !955}
!980 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !948, file: !949, line: 362, type: !981, isLocal: false, isDefinition: false, scopeLine: 362, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!981 = !DISubroutineType(types: !982)
!982 = !{!955, !983}
!983 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !948, file: !949, line: 278, baseType: !22)
!986 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !948, file: !949, line: 368, type: !987, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!987 = !DISubroutineType(types: !988)
!988 = !{!985, !956}
!989 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !948, file: !949, line: 372, type: !990, isLocal: false, isDefinition: false, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!990 = !DISubroutineType(types: !991)
!991 = !{!6, !983, !983}
!992 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !948, file: !949, line: 376, type: !993, isLocal: false, isDefinition: false, scopeLine: 376, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!993 = !DISubroutineType(types: !994)
!994 = !{!985}
!995 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !948, file: !949, line: 380, type: !996, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagPrototyped | DIFlagStaticMember, isOptimized: false)
!996 = !DISubroutineType(types: !997)
!997 = !{!985, !983}
!998 = !{!946}
!999 = !DITemplateTypeParameter(name: "_Alloc", type: !1000)
!1000 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !12, file: !1001, line: 173, flags: DIFlagFwdDecl, identifier: "_ZTSSaIcE")
!1001 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/allocator.h", directory: "/home/shihua/klee/examples/my_example")
!1002 = !DILocalVariable(name: "__lhs", arg: 1, scope: !939, file: !940, line: 6043, type: !943)
!1003 = !DILocation(line: 6043, column: 61, scope: !939)
!1004 = !DILocalVariable(name: "__rhs", arg: 2, scope: !939, file: !940, line: 6044, type: !93)
!1005 = !DILocation(line: 6044, column: 23, scope: !939)
!1006 = !DILocation(line: 6045, column: 14, scope: !939)
!1007 = !DILocation(line: 6045, column: 28, scope: !939)
!1008 = !DILocation(line: 6045, column: 20, scope: !939)
!1009 = !DILocation(line: 6045, column: 35, scope: !939)
!1010 = !DILocation(line: 6045, column: 7, scope: !939)
