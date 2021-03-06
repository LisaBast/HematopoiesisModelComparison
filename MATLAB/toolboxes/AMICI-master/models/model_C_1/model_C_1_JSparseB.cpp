
#include "amici/symbolic_functions.h"
#include "amici/defines.h" //realtype definition
#include <sunmatrix/sunmatrix_sparse.h> //SUNMatrixContent_Sparse definition
typedef amici::realtype realtype;
#include <cmath> 

using namespace amici;

void JSparseB_model_C_1(SUNMatrixContent_Sparse JSparseB, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h, const realtype *xB, const realtype *w, const realtype *dwdx) {
  JSparseB->indexvals[0] = 0;
  JSparseB->indexvals[1] = 0;
  JSparseB->indexvals[2] = 1;
  JSparseB->indexvals[3] = 1;
  JSparseB->indexvals[4] = 2;
  JSparseB->indexvals[5] = 2;
  JSparseB->indexvals[6] = 3;
  JSparseB->indexvals[7] = 3;
  JSparseB->indexvals[8] = 4;
  JSparseB->indexvals[9] = 4;
  JSparseB->indexvals[10] = 5;
  JSparseB->indexvals[11] = 5;
  JSparseB->indexvals[12] = 6;
  JSparseB->indexvals[13] = 0;
  JSparseB->indexvals[14] = 7;
  JSparseB->indexvals[15] = 1;
  JSparseB->indexvals[16] = 7;
  JSparseB->indexvals[17] = 8;
  JSparseB->indexvals[18] = 2;
  JSparseB->indexvals[19] = 8;
  JSparseB->indexvals[20] = 9;
  JSparseB->indexvals[21] = 3;
  JSparseB->indexvals[22] = 9;
  JSparseB->indexvals[23] = 10;
  JSparseB->indexvals[24] = 4;
  JSparseB->indexvals[25] = 10;
  JSparseB->indexvals[26] = 11;
  JSparseB->indexvals[27] = 5;
  JSparseB->indexvals[28] = 11;
  JSparseB->indexvals[29] = 12;
  JSparseB->indexvals[30] = 6;
  JSparseB->indexvals[31] = 12;
  JSparseB->indexvals[32] = 13;
  JSparseB->indexvals[33] = 7;
  JSparseB->indexvals[34] = 14;
  JSparseB->indexvals[35] = 8;
  JSparseB->indexvals[36] = 14;
  JSparseB->indexvals[37] = 15;
  JSparseB->indexvals[38] = 9;
  JSparseB->indexvals[39] = 15;
  JSparseB->indexvals[40] = 16;
  JSparseB->indexvals[41] = 10;
  JSparseB->indexvals[42] = 16;
  JSparseB->indexvals[43] = 17;
  JSparseB->indexvals[44] = 11;
  JSparseB->indexvals[45] = 17;
  JSparseB->indexvals[46] = 18;
  JSparseB->indexvals[47] = 12;
  JSparseB->indexvals[48] = 18;
  JSparseB->indexvals[49] = 19;
  JSparseB->indexvals[50] = 13;
  JSparseB->indexvals[51] = 19;
  JSparseB->indexvals[52] = 20;
  JSparseB->indexvals[53] = 7;
  JSparseB->indexvals[54] = 21;
  JSparseB->indexvals[55] = 8;
  JSparseB->indexvals[56] = 21;
  JSparseB->indexvals[57] = 22;
  JSparseB->indexvals[58] = 9;
  JSparseB->indexvals[59] = 22;
  JSparseB->indexvals[60] = 23;
  JSparseB->indexvals[61] = 10;
  JSparseB->indexvals[62] = 23;
  JSparseB->indexvals[63] = 24;
  JSparseB->indexvals[64] = 11;
  JSparseB->indexvals[65] = 24;
  JSparseB->indexvals[66] = 25;
  JSparseB->indexvals[67] = 12;
  JSparseB->indexvals[68] = 25;
  JSparseB->indexvals[69] = 26;
  JSparseB->indexvals[70] = 13;
  JSparseB->indexvals[71] = 26;
  JSparseB->indexvals[72] = 27;
  JSparseB->indexvals[73] = 14;
  JSparseB->indexvals[74] = 21;
  JSparseB->indexvals[75] = 28;
  JSparseB->indexvals[76] = 22;
  JSparseB->indexvals[77] = 28;
  JSparseB->indexvals[78] = 29;
  JSparseB->indexvals[79] = 23;
  JSparseB->indexvals[80] = 29;
  JSparseB->indexvals[81] = 30;
  JSparseB->indexvals[82] = 24;
  JSparseB->indexvals[83] = 30;
  JSparseB->indexvals[84] = 31;
  JSparseB->indexvals[85] = 25;
  JSparseB->indexvals[86] = 31;
  JSparseB->indexvals[87] = 32;
  JSparseB->indexvals[88] = 26;
  JSparseB->indexvals[89] = 32;
  JSparseB->indexvals[90] = 33;
  JSparseB->indexvals[91] = 27;
  JSparseB->indexvals[92] = 33;
  JSparseB->indexvals[93] = 34;
  JSparseB->indexvals[94] = 21;
  JSparseB->indexvals[95] = 35;
  JSparseB->indexvals[96] = 22;
  JSparseB->indexvals[97] = 35;
  JSparseB->indexvals[98] = 36;
  JSparseB->indexvals[99] = 23;
  JSparseB->indexvals[100] = 36;
  JSparseB->indexvals[101] = 37;
  JSparseB->indexvals[102] = 24;
  JSparseB->indexvals[103] = 37;
  JSparseB->indexvals[104] = 38;
  JSparseB->indexvals[105] = 25;
  JSparseB->indexvals[106] = 38;
  JSparseB->indexvals[107] = 39;
  JSparseB->indexvals[108] = 26;
  JSparseB->indexvals[109] = 39;
  JSparseB->indexvals[110] = 40;
  JSparseB->indexvals[111] = 27;
  JSparseB->indexvals[112] = 40;
  JSparseB->indexvals[113] = 41;
  JSparseB->indexvals[114] = 0;
  JSparseB->indexvals[115] = 35;
  JSparseB->indexvals[116] = 42;
  JSparseB->indexvals[117] = 1;
  JSparseB->indexvals[118] = 42;
  JSparseB->indexvals[119] = 43;
  JSparseB->indexvals[120] = 2;
  JSparseB->indexvals[121] = 43;
  JSparseB->indexvals[122] = 44;
  JSparseB->indexvals[123] = 3;
  JSparseB->indexvals[124] = 44;
  JSparseB->indexvals[125] = 45;
  JSparseB->indexvals[126] = 4;
  JSparseB->indexvals[127] = 45;
  JSparseB->indexvals[128] = 46;
  JSparseB->indexvals[129] = 5;
  JSparseB->indexvals[130] = 46;
  JSparseB->indexvals[131] = 47;
  JSparseB->indexvals[132] = 6;
  JSparseB->indexvals[133] = 47;
  JSparseB->indexvals[134] = 48;
  JSparseB->indexptrs[0] = 0;
  JSparseB->indexptrs[1] = 1;
  JSparseB->indexptrs[2] = 3;
  JSparseB->indexptrs[3] = 5;
  JSparseB->indexptrs[4] = 7;
  JSparseB->indexptrs[5] = 9;
  JSparseB->indexptrs[6] = 11;
  JSparseB->indexptrs[7] = 13;
  JSparseB->indexptrs[8] = 15;
  JSparseB->indexptrs[9] = 18;
  JSparseB->indexptrs[10] = 21;
  JSparseB->indexptrs[11] = 24;
  JSparseB->indexptrs[12] = 27;
  JSparseB->indexptrs[13] = 30;
  JSparseB->indexptrs[14] = 33;
  JSparseB->indexptrs[15] = 35;
  JSparseB->indexptrs[16] = 38;
  JSparseB->indexptrs[17] = 41;
  JSparseB->indexptrs[18] = 44;
  JSparseB->indexptrs[19] = 47;
  JSparseB->indexptrs[20] = 50;
  JSparseB->indexptrs[21] = 53;
  JSparseB->indexptrs[22] = 55;
  JSparseB->indexptrs[23] = 58;
  JSparseB->indexptrs[24] = 61;
  JSparseB->indexptrs[25] = 64;
  JSparseB->indexptrs[26] = 67;
  JSparseB->indexptrs[27] = 70;
  JSparseB->indexptrs[28] = 73;
  JSparseB->indexptrs[29] = 76;
  JSparseB->indexptrs[30] = 79;
  JSparseB->indexptrs[31] = 82;
  JSparseB->indexptrs[32] = 85;
  JSparseB->indexptrs[33] = 88;
  JSparseB->indexptrs[34] = 91;
  JSparseB->indexptrs[35] = 94;
  JSparseB->indexptrs[36] = 96;
  JSparseB->indexptrs[37] = 99;
  JSparseB->indexptrs[38] = 102;
  JSparseB->indexptrs[39] = 105;
  JSparseB->indexptrs[40] = 108;
  JSparseB->indexptrs[41] = 111;
  JSparseB->indexptrs[42] = 114;
  JSparseB->indexptrs[43] = 117;
  JSparseB->indexptrs[44] = 120;
  JSparseB->indexptrs[45] = 123;
  JSparseB->indexptrs[46] = 126;
  JSparseB->indexptrs[47] = 129;
  JSparseB->indexptrs[48] = 132;
  JSparseB->indexptrs[49] = 135;
  JSparseB->data[0] = w[0];
  JSparseB->data[1] = p[9]*-2.0;
  JSparseB->data[2] = w[0];
  JSparseB->data[3] = p[9]*-2.0;
  JSparseB->data[4] = w[0];
  JSparseB->data[5] = p[9]*-2.0;
  JSparseB->data[6] = w[0];
  JSparseB->data[7] = p[9]*-2.0;
  JSparseB->data[8] = w[0];
  JSparseB->data[9] = p[9]*-2.0;
  JSparseB->data[10] = w[0];
  JSparseB->data[11] = p[9]*-2.0;
  JSparseB->data[12] = w[0]-p[9]*2.0;
  JSparseB->data[13] = -p[7];
  JSparseB->data[14] = w[1];
  JSparseB->data[15] = -p[7];
  JSparseB->data[16] = p[13]*-2.0;
  JSparseB->data[17] = w[1];
  JSparseB->data[18] = -p[7];
  JSparseB->data[19] = p[13]*-2.0;
  JSparseB->data[20] = w[1];
  JSparseB->data[21] = -p[7];
  JSparseB->data[22] = p[13]*-2.0;
  JSparseB->data[23] = w[1];
  JSparseB->data[24] = -p[7];
  JSparseB->data[25] = p[13]*-2.0;
  JSparseB->data[26] = w[1];
  JSparseB->data[27] = -p[7];
  JSparseB->data[28] = p[13]*-2.0;
  JSparseB->data[29] = w[1];
  JSparseB->data[30] = -p[7];
  JSparseB->data[31] = p[13]*-2.0;
  JSparseB->data[32] = w[1]-p[13]*2.0;
  JSparseB->data[33] = -p[12];
  JSparseB->data[34] = w[2];
  JSparseB->data[35] = -p[12];
  JSparseB->data[36] = p[21]*-2.0;
  JSparseB->data[37] = w[2];
  JSparseB->data[38] = -p[12];
  JSparseB->data[39] = p[21]*-2.0;
  JSparseB->data[40] = w[2];
  JSparseB->data[41] = -p[12];
  JSparseB->data[42] = p[21]*-2.0;
  JSparseB->data[43] = w[2];
  JSparseB->data[44] = -p[12];
  JSparseB->data[45] = p[21]*-2.0;
  JSparseB->data[46] = w[2];
  JSparseB->data[47] = -p[12];
  JSparseB->data[48] = p[21]*-2.0;
  JSparseB->data[49] = w[2];
  JSparseB->data[50] = -p[12];
  JSparseB->data[51] = p[21]*-2.0;
  JSparseB->data[52] = w[2]-p[21]*2.0;
  JSparseB->data[53] = -p[11];
  JSparseB->data[54] = w[3];
  JSparseB->data[55] = -p[11];
  JSparseB->data[56] = p[17]*-2.0;
  JSparseB->data[57] = w[3];
  JSparseB->data[58] = -p[11];
  JSparseB->data[59] = p[17]*-2.0;
  JSparseB->data[60] = w[3];
  JSparseB->data[61] = -p[11];
  JSparseB->data[62] = p[17]*-2.0;
  JSparseB->data[63] = w[3];
  JSparseB->data[64] = -p[11];
  JSparseB->data[65] = p[17]*-2.0;
  JSparseB->data[66] = w[3];
  JSparseB->data[67] = -p[11];
  JSparseB->data[68] = p[17]*-2.0;
  JSparseB->data[69] = w[3];
  JSparseB->data[70] = -p[11];
  JSparseB->data[71] = p[17]*-2.0;
  JSparseB->data[72] = w[3]-p[17]*2.0;
  JSparseB->data[73] = -p[20];
  JSparseB->data[74] = -p[16];
  JSparseB->data[75] = w[4];
  JSparseB->data[76] = -p[16]-p[20];
  JSparseB->data[77] = p[26]*-2.0;
  JSparseB->data[78] = w[4];
  JSparseB->data[79] = -p[16]-p[20];
  JSparseB->data[80] = p[26]*-2.0;
  JSparseB->data[81] = w[4];
  JSparseB->data[82] = -p[16]-p[20];
  JSparseB->data[83] = p[26]*-2.0;
  JSparseB->data[84] = w[4];
  JSparseB->data[85] = -p[16]-p[20];
  JSparseB->data[86] = p[26]*-2.0;
  JSparseB->data[87] = w[4];
  JSparseB->data[88] = -p[16]-p[20];
  JSparseB->data[89] = p[26]*-2.0;
  JSparseB->data[90] = w[4];
  JSparseB->data[91] = -p[16]-p[20];
  JSparseB->data[92] = p[26]*-2.0;
  JSparseB->data[93] = w[4]-p[26]*2.0;
  JSparseB->data[94] = -p[15];
  JSparseB->data[95] = w[5];
  JSparseB->data[96] = -p[15];
  JSparseB->data[97] = p[23]*-2.0;
  JSparseB->data[98] = w[5];
  JSparseB->data[99] = -p[15];
  JSparseB->data[100] = p[23]*-2.0;
  JSparseB->data[101] = w[5];
  JSparseB->data[102] = -p[15];
  JSparseB->data[103] = p[23]*-2.0;
  JSparseB->data[104] = w[5];
  JSparseB->data[105] = -p[15];
  JSparseB->data[106] = p[23]*-2.0;
  JSparseB->data[107] = w[5];
  JSparseB->data[108] = -p[15];
  JSparseB->data[109] = p[23]*-2.0;
  JSparseB->data[110] = w[5];
  JSparseB->data[111] = -p[15];
  JSparseB->data[112] = p[23]*-2.0;
  JSparseB->data[113] = w[5]-p[23]*2.0;
  JSparseB->data[114] = -p[8];
  JSparseB->data[115] = -p[22];
  JSparseB->data[116] = w[6];
  JSparseB->data[117] = -p[8]-p[22];
  JSparseB->data[118] = p[28]*-2.0;
  JSparseB->data[119] = w[6];
  JSparseB->data[120] = -p[8]-p[22];
  JSparseB->data[121] = p[28]*-2.0;
  JSparseB->data[122] = w[6];
  JSparseB->data[123] = -p[8]-p[22];
  JSparseB->data[124] = p[28]*-2.0;
  JSparseB->data[125] = w[6];
  JSparseB->data[126] = -p[8]-p[22];
  JSparseB->data[127] = p[28]*-2.0;
  JSparseB->data[128] = w[6];
  JSparseB->data[129] = -p[8]-p[22];
  JSparseB->data[130] = p[28]*-2.0;
  JSparseB->data[131] = w[6];
  JSparseB->data[132] = -p[8]-p[22];
  JSparseB->data[133] = p[28]*-2.0;
  JSparseB->data[134] = w[6]-p[28]*2.0;
}

