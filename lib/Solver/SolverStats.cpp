//===-- SolverStats.cpp ---------------------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "klee/Solver/SolverStats.h"

using namespace klee;

Statistic stats::cexCacheTime("CexCacheTime", "CCtime");
Statistic stats::queries("Queries", "Q");
Statistic stats::queriesInvalid("QueriesInvalid", "Qiv");
Statistic stats::queriesValid("QueriesValid", "Qv");
Statistic stats::queryCacheHits("QueryCacheHits", "QChits") ;
Statistic stats::queryCacheMisses("QueryCacheMisses", "QCmisses");
Statistic stats::queryCexCacheHits("QueryCexCacheHits", "QCexHits") ;
Statistic stats::queryCexCacheMisses("QueryCexCacheMisses", "QCexMisses");
Statistic stats::queryConstructTime("QueryConstructTime", "QBtime") ;
Statistic stats::queryConstructs("QueriesConstructs", "QB");
Statistic stats::queryCounterexamples("QueriesCEX", "Qcex");
Statistic stats::queryTime("QueryTime", "Qtime");

Statistic stats::intQueries("IntQueries", "IQ");
Statistic stats::nonintQueries("NonIntQueries", "nIQ");

Statistic stats::shiftFail("ShiftIntFails", "ShiftF");
Statistic stats::extractFail("ExtractIntFails", "ExtractF");
Statistic stats::xorFail("XorFails", "XorF");
Statistic stats::bitwiseLogicFail("BitwiseFails", "BwF");
Statistic stats::readLSBMissMatchFail("ReadLSBFails", "LsbF");
Statistic stats::crosscheckMissmatch("crosscheckMissmatch", "cMiss");
#ifdef KLEE_ARRAY_DEBUG
Statistic stats::arrayHashTime("ArrayHashTime", "AHtime");
#endif
