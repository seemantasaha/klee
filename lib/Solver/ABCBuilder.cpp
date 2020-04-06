#include "klee/Config/config.h"
#ifdef ENABLE_ABC
#include "ABCBuilder.h"

#include "klee/Expr/Expr.h"
#include "klee/Internal/Support/ErrorHandling.h"
#include "klee/Solver/Solver.h"
#include "klee/Solver/SolverStats.h"
#include "klee/util/Bits.h"

#include "llvm/ADT/StringExtras.h"
#include "llvm/Support/CommandLine.h"


using namespace klee;

namespace {
	llvm::cl::opt<bool> UseConstructHashABC(
    "use-construct-hash-ABC",
    llvm::cl::desc("Use hash-consing during ABC query construction (default=true)"),
    llvm::cl::init(true),
    llvm::cl::cat(klee::ExprCat));
}

namespace klee{
	template <> void 
}