//===-- ConstructSolverChain.cpp ------------------------------------++ -*-===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

/*
 * This file groups declarations that are common to both KLEE and Kleaver.
 */

#include "klee/Common.h"
#include "klee/Internal/Support/ErrorHandling.h"
#include "klee/Internal/System/Time.h"
#include "klee/Solver/SolverCmdLine.h"
#include "../Solver/Z3IntSolver.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"


namespace klee {
  extern llvm::cl::opt<bool>
  IsInt("use-int-solver",
          llvm::cl::init(false),
          llvm::cl::desc("Try to use z3 int solver first (default=off)."));

Solver *constructSolverChain(Solver *coreSolver,
                             std::string querySMT2LogPath,
                             std::string baseSolverQuerySMT2LogPath,
                             std::string queryKQueryLogPath,
                             std::string baseSolverQueryKQueryLogPath) {
  Solver *solver = coreSolver;
  const time::Span minQueryTimeToLog(MinQueryTimeToLog);

  if (QueryLoggingOptions.isSet(SOLVER_SMTLIB)) {
    solver = createSMTLIBLoggingSolver(solver, baseSolverQuerySMT2LogPath, minQueryTimeToLog, LogTimedOutQueries);
    klee_message("Logging queries that reach solver in .smt2 format to %s\n",
                 baseSolverQuerySMT2LogPath.c_str());
  }

  if (IsInt){
    solver = new Z3IntSolver(solver);
    if (DebugCrossCheckZ3IntSolverWith != NO_SOLVER) {
      Solver *oracleSolver = createCoreSolver(DebugCrossCheckZ3IntSolverWith);
      solver = createValidatingSolver(/*s=*/solver, /*oracle=*/oracleSolver);
    }
  }

// if (QueryLoggingOptions.isSet(SOLVER_KQUERY)) {
//     solver = createKQueryLoggingSolver(solver, baseSolverQueryKQueryLogPath, minQueryTimeToLog, LogTimedOutQueries);
//     klee_message("Logging queries that reach solver in .kquery format to %s\n",
//                  baseSolverQueryKQueryLogPath.c_str());
//   }

   if (DebugValidateSolver)
     solver = createValidatingSolver(solver, coreSolver);

   if (UseAssignmentValidatingSolver)
     solver = createAssignmentValidatingSolver(solver);

   if (UseFastCexSolver)
     solver = createFastCexSolver(solver);

   if (UseCexCache)
     solver = createCexCachingSolver(solver);

   if (UseBranchCache)
     solver = createCachingSolver(solver);

   if (UseIndependentSolver)
     solver = createIndependentSolver(solver);

   if (DebugValidateSolver)
     solver = createValidatingSolver(solver, coreSolver);

   if (QueryLoggingOptions.isSet(ALL_KQUERY)) {
     solver = createKQueryLoggingSolver(solver, queryKQueryLogPath, minQueryTimeToLog, LogTimedOutQueries);
     klee_message("Logging all queries in .kquery format to %s\n",
                  queryKQueryLogPath.c_str());
   }

   if (QueryLoggingOptions.isSet(ALL_SMTLIB)) {
     solver = createSMTLIBLoggingSolver(solver, querySMT2LogPath, minQueryTimeToLog, LogTimedOutQueries);
     klee_message("Logging all queries in .smt2 format to %s\n",
                  querySMT2LogPath.c_str());
   }
   if (DebugCrossCheckCoreSolverWith != NO_SOLVER) {
     Solver *oracleSolver = createCoreSolver(DebugCrossCheckCoreSolverWith);
     solver = createValidatingSolver(/*s=*/solver, /*oracle=*/oracleSolver);
   }

  return solver;
}
}
