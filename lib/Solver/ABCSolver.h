//===-- Z3IntSolver.h
//---------------------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef KLEE_ABCSOLVER_H
#define KLEE_ABCSOLVER_H

#include "klee/Solver.h"

namespace klee {
/// Z3IntSolver - A partial int solver based on Z3
class ABCSolver : public Solver {
  Solver* coreSolver;
public:
  /// ABCSolver - Construct a new ABCSolver.
  ABCSolver(Solver* s);

  /// Get the query in SMT-LIBv2 format.
  /// \return A C-style string. The caller is responsible for freeing this.
  virtual char *getConstraintLog(const Query &);

  /// setCoreSolverTimeout - Set constraint solver timeout delay to the given
  /// value; 0
  /// is off.
  virtual void setCoreSolverTimeout(time::Span timeout);
};
}

#endif /* KLEE_ABCSOLVER_H */