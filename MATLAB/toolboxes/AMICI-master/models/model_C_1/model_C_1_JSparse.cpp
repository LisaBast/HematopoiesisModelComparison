
#include "amici/symbolic_functions.h"
#include "amici/defines.h" //realtype definition
#include <sunmatrix/sunmatrix_sparse.h> //SUNMatrixContent_Sparse definition
typedef amici::realtype realtype;
#include <cmath> 

using namespace amici;

void JSparse_model_C_1(SUNMatrixContent_Sparse JSparse, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h, const realtype *w, const realtype *dwdx) {
  JSparse->indexvals[0] = 0;
  JSparse->indexvals[1] = 1;
  JSparse->indexvals[2] = 7;
  JSparse->indexvals[3] = 42;
  JSparse->indexvals[4] = 1;
  JSparse->indexvals[5] = 2;
  JSparse->indexvals[6] = 8;
  JSparse->indexvals[7] = 43;
  JSparse->indexvals[8] = 2;
  JSparse->indexvals[9] = 3;
  JSparse->indexvals[10] = 9;
  JSparse->indexvals[11] = 44;
  JSparse->indexvals[12] = 3;
  JSparse->indexvals[13] = 4;
  JSparse->indexvals[14] = 10;
  JSparse->indexvals[15] = 45;
  JSparse->indexvals[16] = 4;
  JSparse->indexvals[17] = 5;
  JSparse->indexvals[18] = 11;
  JSparse->indexvals[19] = 46;
  JSparse->indexvals[20] = 5;
  JSparse->indexvals[21] = 6;
  JSparse->indexvals[22] = 12;
  JSparse->indexvals[23] = 47;
  JSparse->indexvals[24] = 6;
  JSparse->indexvals[25] = 13;
  JSparse->indexvals[26] = 48;
  JSparse->indexvals[27] = 7;
  JSparse->indexvals[28] = 8;
  JSparse->indexvals[29] = 14;
  JSparse->indexvals[30] = 21;
  JSparse->indexvals[31] = 8;
  JSparse->indexvals[32] = 9;
  JSparse->indexvals[33] = 15;
  JSparse->indexvals[34] = 22;
  JSparse->indexvals[35] = 9;
  JSparse->indexvals[36] = 10;
  JSparse->indexvals[37] = 16;
  JSparse->indexvals[38] = 23;
  JSparse->indexvals[39] = 10;
  JSparse->indexvals[40] = 11;
  JSparse->indexvals[41] = 17;
  JSparse->indexvals[42] = 24;
  JSparse->indexvals[43] = 11;
  JSparse->indexvals[44] = 12;
  JSparse->indexvals[45] = 18;
  JSparse->indexvals[46] = 25;
  JSparse->indexvals[47] = 12;
  JSparse->indexvals[48] = 13;
  JSparse->indexvals[49] = 19;
  JSparse->indexvals[50] = 26;
  JSparse->indexvals[51] = 13;
  JSparse->indexvals[52] = 20;
  JSparse->indexvals[53] = 27;
  JSparse->indexvals[54] = 14;
  JSparse->indexvals[55] = 15;
  JSparse->indexvals[56] = 28;
  JSparse->indexvals[57] = 15;
  JSparse->indexvals[58] = 16;
  JSparse->indexvals[59] = 16;
  JSparse->indexvals[60] = 17;
  JSparse->indexvals[61] = 17;
  JSparse->indexvals[62] = 18;
  JSparse->indexvals[63] = 18;
  JSparse->indexvals[64] = 19;
  JSparse->indexvals[65] = 19;
  JSparse->indexvals[66] = 20;
  JSparse->indexvals[67] = 20;
  JSparse->indexvals[68] = 21;
  JSparse->indexvals[69] = 22;
  JSparse->indexvals[70] = 28;
  JSparse->indexvals[71] = 35;
  JSparse->indexvals[72] = 22;
  JSparse->indexvals[73] = 23;
  JSparse->indexvals[74] = 29;
  JSparse->indexvals[75] = 36;
  JSparse->indexvals[76] = 23;
  JSparse->indexvals[77] = 24;
  JSparse->indexvals[78] = 30;
  JSparse->indexvals[79] = 37;
  JSparse->indexvals[80] = 24;
  JSparse->indexvals[81] = 25;
  JSparse->indexvals[82] = 31;
  JSparse->indexvals[83] = 38;
  JSparse->indexvals[84] = 25;
  JSparse->indexvals[85] = 26;
  JSparse->indexvals[86] = 32;
  JSparse->indexvals[87] = 39;
  JSparse->indexvals[88] = 26;
  JSparse->indexvals[89] = 27;
  JSparse->indexvals[90] = 33;
  JSparse->indexvals[91] = 40;
  JSparse->indexvals[92] = 27;
  JSparse->indexvals[93] = 34;
  JSparse->indexvals[94] = 41;
  JSparse->indexvals[95] = 28;
  JSparse->indexvals[96] = 29;
  JSparse->indexvals[97] = 29;
  JSparse->indexvals[98] = 30;
  JSparse->indexvals[99] = 30;
  JSparse->indexvals[100] = 31;
  JSparse->indexvals[101] = 31;
  JSparse->indexvals[102] = 32;
  JSparse->indexvals[103] = 32;
  JSparse->indexvals[104] = 33;
  JSparse->indexvals[105] = 33;
  JSparse->indexvals[106] = 34;
  JSparse->indexvals[107] = 34;
  JSparse->indexvals[108] = 35;
  JSparse->indexvals[109] = 36;
  JSparse->indexvals[110] = 42;
  JSparse->indexvals[111] = 36;
  JSparse->indexvals[112] = 37;
  JSparse->indexvals[113] = 37;
  JSparse->indexvals[114] = 38;
  JSparse->indexvals[115] = 38;
  JSparse->indexvals[116] = 39;
  JSparse->indexvals[117] = 39;
  JSparse->indexvals[118] = 40;
  JSparse->indexvals[119] = 40;
  JSparse->indexvals[120] = 41;
  JSparse->indexvals[121] = 41;
  JSparse->indexvals[122] = 42;
  JSparse->indexvals[123] = 43;
  JSparse->indexvals[124] = 43;
  JSparse->indexvals[125] = 44;
  JSparse->indexvals[126] = 44;
  JSparse->indexvals[127] = 45;
  JSparse->indexvals[128] = 45;
  JSparse->indexvals[129] = 46;
  JSparse->indexvals[130] = 46;
  JSparse->indexvals[131] = 47;
  JSparse->indexvals[132] = 47;
  JSparse->indexvals[133] = 48;
  JSparse->indexvals[134] = 48;
  JSparse->indexptrs[0] = 0;
  JSparse->indexptrs[1] = 4;
  JSparse->indexptrs[2] = 8;
  JSparse->indexptrs[3] = 12;
  JSparse->indexptrs[4] = 16;
  JSparse->indexptrs[5] = 20;
  JSparse->indexptrs[6] = 24;
  JSparse->indexptrs[7] = 27;
  JSparse->indexptrs[8] = 31;
  JSparse->indexptrs[9] = 35;
  JSparse->indexptrs[10] = 39;
  JSparse->indexptrs[11] = 43;
  JSparse->indexptrs[12] = 47;
  JSparse->indexptrs[13] = 51;
  JSparse->indexptrs[14] = 54;
  JSparse->indexptrs[15] = 57;
  JSparse->indexptrs[16] = 59;
  JSparse->indexptrs[17] = 61;
  JSparse->indexptrs[18] = 63;
  JSparse->indexptrs[19] = 65;
  JSparse->indexptrs[20] = 67;
  JSparse->indexptrs[21] = 68;
  JSparse->indexptrs[22] = 72;
  JSparse->indexptrs[23] = 76;
  JSparse->indexptrs[24] = 80;
  JSparse->indexptrs[25] = 84;
  JSparse->indexptrs[26] = 88;
  JSparse->indexptrs[27] = 92;
  JSparse->indexptrs[28] = 95;
  JSparse->indexptrs[29] = 97;
  JSparse->indexptrs[30] = 99;
  JSparse->indexptrs[31] = 101;
  JSparse->indexptrs[32] = 103;
  JSparse->indexptrs[33] = 105;
  JSparse->indexptrs[34] = 107;
  JSparse->indexptrs[35] = 108;
  JSparse->indexptrs[36] = 111;
  JSparse->indexptrs[37] = 113;
  JSparse->indexptrs[38] = 115;
  JSparse->indexptrs[39] = 117;
  JSparse->indexptrs[40] = 119;
  JSparse->indexptrs[41] = 121;
  JSparse->indexptrs[42] = 122;
  JSparse->indexptrs[43] = 124;
  JSparse->indexptrs[44] = 126;
  JSparse->indexptrs[45] = 128;
  JSparse->indexptrs[46] = 130;
  JSparse->indexptrs[47] = 132;
  JSparse->indexptrs[48] = 134;
  JSparse->indexptrs[49] = 135;
  JSparse->data[0] = -w[0];
  JSparse->data[1] = p[9]*2.0;
  JSparse->data[2] = p[7];
  JSparse->data[3] = p[8];
  JSparse->data[4] = -w[0];
  JSparse->data[5] = p[9]*2.0;
  JSparse->data[6] = p[7];
  JSparse->data[7] = p[8]+p[22];
  JSparse->data[8] = -w[0];
  JSparse->data[9] = p[9]*2.0;
  JSparse->data[10] = p[7];
  JSparse->data[11] = p[8]+p[22];
  JSparse->data[12] = -w[0];
  JSparse->data[13] = p[9]*2.0;
  JSparse->data[14] = p[7];
  JSparse->data[15] = p[8]+p[22];
  JSparse->data[16] = -w[0];
  JSparse->data[17] = p[9]*2.0;
  JSparse->data[18] = p[7];
  JSparse->data[19] = p[8]+p[22];
  JSparse->data[20] = -w[0];
  JSparse->data[21] = p[9]*2.0;
  JSparse->data[22] = p[7];
  JSparse->data[23] = p[8]+p[22];
  JSparse->data[24] = -w[0]+p[9]*2.0;
  JSparse->data[25] = p[7];
  JSparse->data[26] = p[8]+p[22];
  JSparse->data[27] = -w[1];
  JSparse->data[28] = p[13]*2.0;
  JSparse->data[29] = p[12];
  JSparse->data[30] = p[11];
  JSparse->data[31] = -w[1];
  JSparse->data[32] = p[13]*2.0;
  JSparse->data[33] = p[12];
  JSparse->data[34] = p[11];
  JSparse->data[35] = -w[1];
  JSparse->data[36] = p[13]*2.0;
  JSparse->data[37] = p[12];
  JSparse->data[38] = p[11];
  JSparse->data[39] = -w[1];
  JSparse->data[40] = p[13]*2.0;
  JSparse->data[41] = p[12];
  JSparse->data[42] = p[11];
  JSparse->data[43] = -w[1];
  JSparse->data[44] = p[13]*2.0;
  JSparse->data[45] = p[12];
  JSparse->data[46] = p[11];
  JSparse->data[47] = -w[1];
  JSparse->data[48] = p[13]*2.0;
  JSparse->data[49] = p[12];
  JSparse->data[50] = p[11];
  JSparse->data[51] = -w[1]+p[13]*2.0;
  JSparse->data[52] = p[12];
  JSparse->data[53] = p[11];
  JSparse->data[54] = -w[2];
  JSparse->data[55] = p[21]*2.0;
  JSparse->data[56] = p[20];
  JSparse->data[57] = -w[2];
  JSparse->data[58] = p[21]*2.0;
  JSparse->data[59] = -w[2];
  JSparse->data[60] = p[21]*2.0;
  JSparse->data[61] = -w[2];
  JSparse->data[62] = p[21]*2.0;
  JSparse->data[63] = -w[2];
  JSparse->data[64] = p[21]*2.0;
  JSparse->data[65] = -w[2];
  JSparse->data[66] = p[21]*2.0;
  JSparse->data[67] = -w[2]+p[21]*2.0;
  JSparse->data[68] = -w[3];
  JSparse->data[69] = p[17]*2.0;
  JSparse->data[70] = p[16];
  JSparse->data[71] = p[15];
  JSparse->data[72] = -w[3];
  JSparse->data[73] = p[17]*2.0;
  JSparse->data[74] = p[16]+p[20];
  JSparse->data[75] = p[15];
  JSparse->data[76] = -w[3];
  JSparse->data[77] = p[17]*2.0;
  JSparse->data[78] = p[16]+p[20];
  JSparse->data[79] = p[15];
  JSparse->data[80] = -w[3];
  JSparse->data[81] = p[17]*2.0;
  JSparse->data[82] = p[16]+p[20];
  JSparse->data[83] = p[15];
  JSparse->data[84] = -w[3];
  JSparse->data[85] = p[17]*2.0;
  JSparse->data[86] = p[16]+p[20];
  JSparse->data[87] = p[15];
  JSparse->data[88] = -w[3];
  JSparse->data[89] = p[17]*2.0;
  JSparse->data[90] = p[16]+p[20];
  JSparse->data[91] = p[15];
  JSparse->data[92] = -w[3]+p[17]*2.0;
  JSparse->data[93] = p[16]+p[20];
  JSparse->data[94] = p[15];
  JSparse->data[95] = -w[4];
  JSparse->data[96] = p[26]*2.0;
  JSparse->data[97] = -w[4];
  JSparse->data[98] = p[26]*2.0;
  JSparse->data[99] = -w[4];
  JSparse->data[100] = p[26]*2.0;
  JSparse->data[101] = -w[4];
  JSparse->data[102] = p[26]*2.0;
  JSparse->data[103] = -w[4];
  JSparse->data[104] = p[26]*2.0;
  JSparse->data[105] = -w[4];
  JSparse->data[106] = p[26]*2.0;
  JSparse->data[107] = -w[4]+p[26]*2.0;
  JSparse->data[108] = -w[5];
  JSparse->data[109] = p[23]*2.0;
  JSparse->data[110] = p[22];
  JSparse->data[111] = -w[5];
  JSparse->data[112] = p[23]*2.0;
  JSparse->data[113] = -w[5];
  JSparse->data[114] = p[23]*2.0;
  JSparse->data[115] = -w[5];
  JSparse->data[116] = p[23]*2.0;
  JSparse->data[117] = -w[5];
  JSparse->data[118] = p[23]*2.0;
  JSparse->data[119] = -w[5];
  JSparse->data[120] = p[23]*2.0;
  JSparse->data[121] = -w[5]+p[23]*2.0;
  JSparse->data[122] = -w[6];
  JSparse->data[123] = p[28]*2.0;
  JSparse->data[124] = -w[6];
  JSparse->data[125] = p[28]*2.0;
  JSparse->data[126] = -w[6];
  JSparse->data[127] = p[28]*2.0;
  JSparse->data[128] = -w[6];
  JSparse->data[129] = p[28]*2.0;
  JSparse->data[130] = -w[6];
  JSparse->data[131] = p[28]*2.0;
  JSparse->data[132] = -w[6];
  JSparse->data[133] = p[28]*2.0;
  JSparse->data[134] = -w[6]+p[28]*2.0;
}

