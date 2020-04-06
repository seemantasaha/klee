#include "klee/Config/config.h"
#include "klee/Internal/Support/ErrorHandling.h"
#include "klee/Internal/Support/FileHandling.h"
#include "klee/OptionCategories.h"

#ifdef ENABLE_ABC

#include "Z3Solver.h"
#include "Z3Builder.h"

#include "klee/Expr/Constraints.h"
#include "klee/Expr/Assignment.h"
#include "klee/Expr/ExprUtil.h"
#include "klee/Solver/Solver.h"
#include "klee/Solver/SolverImpl.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/ErrorHandling.h"


bool wasIntQuery = false;

namespace klee{

class ABCSolverImpl : public SolverImpl {
private:
  ABCBuilder *builder;
  Solver* coreSolver;
  time::Span timeout;
  SolverRunStatus runStatusCode;
public:
  ABCSolverImpl(Solver *s);
  ~ABCSolverImpl();
  char *getConstraintLog(const Query &);
  void setCoreSolverTimeout(time::Span _timeout);
  bool computeTruth(const Query &, bool &isValid);
  bool computeValue(const Query &, ref<Expr> &result);
  bool computeInitialValues(const Query &,
                            const std::vector<const Array *> &objects,
                            std::vector<std::vector<unsigned char> > &values,
                            bool &hasSolution);
  // SolverRunStatus
  // handleSolverResponse(::Z3_solver theSolver, ::Z3_lbool satisfiable,
  //                      const std::vector<const Array *> *objects,
  //                      std::vector<std::vector<unsigned char> > *values,
  //                      bool &hasSolution);
  SolverRunStatus getOperationStatusCode();
};


ABCSolver::ABCSolver() : Solver(new ABCSolverImpl()) {}

char *ABCSolver::getConstraintLog(const Query &query) {
  return impl->getConstraintLog(query);
}

void ABCSolver::setCoreSolverTimeout(time::Span timeout) {
  impl->setCoreSolverTimeout(timeout);
}

}