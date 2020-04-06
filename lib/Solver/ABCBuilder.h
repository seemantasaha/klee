//===-- ABCBuilder.h --------------------------------------------*- C++ -*-====//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef KLEE_ABCINTBUILDER_H
#define KLEE_ABCINTBUILDER_H

#include "klee/Config/config.h"
#include "klee/util/ArrayExprHash.h"
#include "klee/util/ExprHashMap.h"
#include <unordered_map>
#include "~/ABC/src/Driver.h"   // Is this the interface???

namespace klee {


template <typename T> class ABCNodeHandle {
protected:
  T node;
  ::ABC_context context; // No equivalent

private:
  // To be specialised
  inline ::ABC_ast as_ast();

public:
  ABCNodeHandle() : node(NULL), context(NULL) {}
  ABCNodeHandle(const T _node, const ::ABC_context _context)
      : node(_node), context(_context) {
    if (node && context) {
      ::ABC_inc_ref(context, as_ast()); // Probably cannot find equivalent in ABC
    }
  };
  ~ABCNodeHandle() {
    if (node && context) {
      ::ABC_dec_ref(context, as_ast());  // Probably cannot find equivalent in ABC
    }
  }
  ABCNodeHandle(const ABCNodeHandle &b) : node(b.node), context(b.context) {
    if (node && context) {
      ::ABC_inc_ref(context, as_ast());  // Probably cannot find equivalent in ABC
    }
  }
  ABCNodeHandle &operator=(const ABCNodeHandle &b) {
    if (node == NULL && context == NULL) {
      // Special case for when this object was constructed
      // using the default constructor. Try to inherit a non null
      // context.
      context = b.context;
    }
    assert(context == b.context && "Mismatched ABC contexts!");
    // node != nullptr ==> context != NULL
    assert((node == NULL || context) &&
           "Can't have non nullptr node with nullptr context");

    if (node && context) {
      ::ABC_dec_ref(context, as_ast());  // Probably cannot find equivalent in ABC
    }
    node = b.node;
    if (node && context) {
      ::ABC_inc_ref(context, as_ast());   // Probably cannot find equivalent in ABC
    }
    return *this;
  }
  // To be specialised
  void dump();

  operator T() const { return node; }
};

// Specialise for ABC_sort
template <> inline ::ABC_ast ABCNodeHandle<ABC_sort>::as_ast() {
  // In ABC internally this call is just a cast. We could just do that
  // instead to simplify our implementation but this seems cleaner.
  return ::ABC_sort_to_ast(context, node);
}
typedef ABCNodeHandle<ABC_sort> ABCSortHandle;
template <> void ABCNodeHandle<ABC_sort>::dump() __attribute__((used));

// Specialise for ABC_ast
template <> inline ::ABC_ast ABCNodeHandle<ABC_ast>::as_ast() { return node; }
typedef ABCNodeHandle<ABC_ast> ABCASTHandle;
template <> void ABCNodeHandle<ABC_ast>::dump() __attribute__((used));

class ABCArrayExprHash : public ArrayExprHash<ABCASTHandle> {

  friend class ABCIntBuilder;

public:
  ABCArrayExprHash(){};
  virtual ~ABCArrayExprHash();
  void clear();
};

class ABCIntBuilder {
  ExprHashMap<std::pair<ABCASTHandle, unsigned> > constructed;
  ABCArrayExprHash _arr_hash;

private:
  ABCASTHandle uIntConst(uint64_t value);
  ABCASTHandle sIntConst(int64_t value);
  ABCASTHandle eqExpr(ABCASTHandle a, ABCASTHandle b);
  ABCASTHandle ltExpr(ABCASTHandle a, ABCASTHandle b);
  ABCASTHandle leExpr(ABCASTHandle a, ABCASTHandle b);
  ABCASTHandle geExpr(ABCASTHandle a, ABCASTHandle b);

  // logical left and right shift (not arithmetic)
  ABCASTHandle notExpr(ABCASTHandle expr);
  ABCASTHandle andExpr(ABCASTHandle lhs, ABCASTHandle rhs);
  ABCASTHandle orExpr(ABCASTHandle lhs, ABCASTHandle rhs);
  ABCASTHandle iffExpr(ABCASTHandle lhs, ABCASTHandle rhs);

  // Array operations
  ABCASTHandle writeExpr(ABCASTHandle array, ABCASTHandle index,
                        ABCASTHandle value);
  ABCASTHandle readExpr(ABCASTHandle array, ABCASTHandle index);

  // ITE-expression constructor
  ABCASTHandle iteExpr(ABCASTHandle condition, ABCASTHandle whenTrue,
                      ABCASTHandle whenFalse);
  ABCASTHandle getInitialArray(const Array *os);
  ABCASTHandle getArrayForUpdate(const Array *root, const UpdateNode *un);

  ABCASTHandle constructActual(ref<Expr> e, int *width_out);
  ABCASTHandle construct(ref<Expr> e, int *width_out);

  ABCASTHandle buildArray(const char *name, unsigned indexWidth,
                         unsigned valueWidth);

  ABCSortHandle getIntSort();
  ABCSortHandle getArraySort(ABCSortHandle domainSort, ABCSortHandle rangeSort);
  //bool autoClearConstructCache;
  //std::string ABCLogInteractionFile;

public:
  //static const ReadExpr* hasOrderedReads(const Expr* e, int stride, int&);
  //ABC_context ctx;
  //std::unordered_map<const Array *, std::vector<ABCASTHandle> >
  //    constant_array_assertions;
  ABCIntBuilder(bool autoClearConstructCache, const char *ABCLogInteractionFile);
  ~ABCIntBuilder();

  ABCASTHandle getTrue();
  ABCASTHandle getFalse();
  ABCASTHandle getInitialRead(const Array *os, unsigned index);

  ABCASTHandle construct(ref<Expr> e) {
    ABCASTHandle res = construct(e, 0);
    //if (autoClearConstructCache)
    constructed.clear();
      //clearConstructCache();
    return res;
  }
  //void clearConstructCache() { constructed.clear(); }
};

}

#endif
