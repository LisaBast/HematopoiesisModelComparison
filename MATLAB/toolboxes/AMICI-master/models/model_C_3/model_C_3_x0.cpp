
#include "amici/symbolic_functions.h"
#include "amici/defines.h" //realtype definition
typedef amici::realtype realtype;
#include <cmath> 

using namespace amici;

void x0_model_C_3(realtype *x0, const realtype t, const realtype *p, const realtype *k) {
  x0[0] = exp(p[0])-1.0;
  x0[91] = exp(p[1])-1.0;
  x0[182] = exp(p[2])-1.0;
  x0[252] = exp(p[3])-1.0;
  x0[343] = exp(p[4])-1.0;
  x0[413] = exp(p[5])-1.0;
  x0[483] = exp(p[6])-1.0;
}

