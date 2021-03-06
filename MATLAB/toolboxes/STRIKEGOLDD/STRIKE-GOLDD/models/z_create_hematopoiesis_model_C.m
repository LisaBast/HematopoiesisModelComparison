% hematopoiesis model 
%model_C
% Lisa Bast 
 
clearvars -except i model_str opt;
 
%% states 
syms  x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 x55 x56 x57 x58 x59 x60 x61 x62 x63 x64 x65 x66 x67 x68 x69 x70 x71 x72 x73 x74 x75 x76 x77 x78 x79 x80 x81 x82 x83 x84 x85 x86 x87 x88 x89 x90 x91 x92 x93 x94 x95 x96 x97 x98 x99 x100 x101 x102 x103 x104 x105 x106 x107 x108 x109 x110 x111 x112 x113 x114 x115 x116 x117 x118 x119 x120 x121 x122 x123 x124 x125 x126 x127 x128 x129 x130 x131 x132 x133 x134 x135 x136 x137 x138 x139 x140 x141 x142 x143 x144 x145 x146 x147 x148 x149 x150 x151 x152 x153 x154 x155 x156 x157 x158 x159 x160 x161 x162 x163 x164 x165 x166 x167 x168 x169 x170 x171 x172 x173 x174 x175 x176 x177 x178 x179 x180 x181 x182 x183 x184 x185 x186 x187 x188 x189 x190 x191 x192 x193 x194 x195 x196 x197 x198 x199 x200 x201 x202 x203 x204 x205 x206 x207 x208 x209 x210 x211 x212 x213 x214 x215 x216 x217 x218 x219 x220 x221 x222 x223 x224 x225 x226 x227 x228 x229 x230 x231 x232 x233 x234 x235 x236 x237 x238 x239 x240 x241 x242 x243 x244 x245 x246 x247 x248 x249 x250 x251 x252 x253 x254 x255 x256 x257 x258 x259 x260 x261 x262 x263 x264 x265 x266 x267 x268 x269 x270 x271 x272 x273 x274 x275 x276 x277 x278 x279 x280 x281 x282 x283 x284 x285 x286 x287 x288 x289 x290 x291 x292 x293 x294 x295 x296 x297 x298 x299 x300 x301 x302 x303 x304 x305 x306 x307 x308 x309 x310 x311 x312 x313 x314 x315 x316 x317 x318 x319 x320 x321 x322 x323 x324 x325 x326 x327 x328 x329 x330 x331 x332 x333 x334 x335 x336 x337 x338 x339 x340 x341 x342 x343 x344 x345 x346 x347 x348 x349 x350 x351 x352 x353 x354 x355 x356 x357 x358 x359 x360 x361 x362 x363 x364 x365 x366 x367 x368 x369 x370 x371 x372 x373 x374 x375 x376 x377 x378 x379 x380 x381 x382 x383 x384 x385 x386 x387 x388 x389 x390 x391 x392 x393 x394 x395 x396 x397 x398 x399 x400 x401 x402 x403 x404 x405 x406 x407 x408 x409 x410 x411 x412 x413 x414 x415 x416 x417 x418 x419 x420 x421 x422 x423 x424 x425 x426 x427 x428 x429 x430 x431 x432 x433 x434 x435 x436 x437 x438 x439 x440 x441 x442 x443 x444 x445 x446 x447 x448 x449 x450 x451 x452 x453 x454 x455 x456 x457 x458 x459 x460 x461 x462 x463 x464 x465 x466 x467 x468 x469 x470 x471 x472 x473 x474 x475 x476 x477 x478 x479 x480 x481 x482 x483 x484 x485 x486 x487 x488 x489 x490 x491 x492 x493 x494 x495 x496 x497 x498 x499 x500 x501 x502 x503 x504 x505 x506 x507 x508 x509 x510 x511 x512 x513 x514 x515 x516 x517 x518 x519 x520 x521 x522 x523 x524 x525 x526 x527 x528 x529 x530 x531 x532
x = [ x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 x55 x56 x57 x58 x59 x60 x61 x62 x63 x64 x65 x66 x67 x68 x69 x70 x71 x72 x73 x74 x75 x76 x77 x78 x79 x80 x81 x82 x83 x84 x85 x86 x87 x88 x89 x90 x91 x92 x93 x94 x95 x96 x97 x98 x99 x100 x101 x102 x103 x104 x105 x106 x107 x108 x109 x110 x111 x112 x113 x114 x115 x116 x117 x118 x119 x120 x121 x122 x123 x124 x125 x126 x127 x128 x129 x130 x131 x132 x133 x134 x135 x136 x137 x138 x139 x140 x141 x142 x143 x144 x145 x146 x147 x148 x149 x150 x151 x152 x153 x154 x155 x156 x157 x158 x159 x160 x161 x162 x163 x164 x165 x166 x167 x168 x169 x170 x171 x172 x173 x174 x175 x176 x177 x178 x179 x180 x181 x182 x183 x184 x185 x186 x187 x188 x189 x190 x191 x192 x193 x194 x195 x196 x197 x198 x199 x200 x201 x202 x203 x204 x205 x206 x207 x208 x209 x210 x211 x212 x213 x214 x215 x216 x217 x218 x219 x220 x221 x222 x223 x224 x225 x226 x227 x228 x229 x230 x231 x232 x233 x234 x235 x236 x237 x238 x239 x240 x241 x242 x243 x244 x245 x246 x247 x248 x249 x250 x251 x252 x253 x254 x255 x256 x257 x258 x259 x260 x261 x262 x263 x264 x265 x266 x267 x268 x269 x270 x271 x272 x273 x274 x275 x276 x277 x278 x279 x280 x281 x282 x283 x284 x285 x286 x287 x288 x289 x290 x291 x292 x293 x294 x295 x296 x297 x298 x299 x300 x301 x302 x303 x304 x305 x306 x307 x308 x309 x310 x311 x312 x313 x314 x315 x316 x317 x318 x319 x320 x321 x322 x323 x324 x325 x326 x327 x328 x329 x330 x331 x332 x333 x334 x335 x336 x337 x338 x339 x340 x341 x342 x343 x344 x345 x346 x347 x348 x349 x350 x351 x352 x353 x354 x355 x356 x357 x358 x359 x360 x361 x362 x363 x364 x365 x366 x367 x368 x369 x370 x371 x372 x373 x374 x375 x376 x377 x378 x379 x380 x381 x382 x383 x384 x385 x386 x387 x388 x389 x390 x391 x392 x393 x394 x395 x396 x397 x398 x399 x400 x401 x402 x403 x404 x405 x406 x407 x408 x409 x410 x411 x412 x413 x414 x415 x416 x417 x418 x419 x420 x421 x422 x423 x424 x425 x426 x427 x428 x429 x430 x431 x432 x433 x434 x435 x436 x437 x438 x439 x440 x441 x442 x443 x444 x445 x446 x447 x448 x449 x450 x451 x452 x453 x454 x455 x456 x457 x458 x459 x460 x461 x462 x463 x464 x465 x466 x467 x468 x469 x470 x471 x472 x473 x474 x475 x476 x477 x478 x479 x480 x481 x482 x483 x484 x485 x486 x487 x488 x489 x490 x491 x492 x493 x494 x495 x496 x497 x498 x499 x500 x501 x502 x503 x504 x505 x506 x507 x508 x509 x510 x511 x512 x513 x514 x515 x516 x517 x518 x519 x520 x521 x522 x523 x524 x525 x526 x527 x528 x529 x530 x531 x532];
 
%% unknown parameters
syms x0_1 x0_2 x0_3 x0_4 x0_5 x0_6 x0_7 a_HSC_MPP a_HSC_mat b_HSC g_HSC a_MPP_CMP a_MPP_MLP b_MPP g_MPP a_CMP_MEP a_CMP_GMP b_CMP g_CMP a_MLP a_MLP_GMP b_MLP a_MEP_mat b_MEP g_MEP a_GMP_mat b_GMP g_GMP b_mat g_mat
p= [x0_1; x0_2; x0_3; x0_4; x0_5; x0_6; x0_7; a_HSC_MPP; a_HSC_mat; b_HSC; g_HSC; a_MPP_CMP; a_MPP_MLP; b_MPP; g_MPP; a_CMP_MEP; a_CMP_GMP; b_CMP; g_CMP; a_MLP; a_MLP_GMP; b_MLP; a_MEP_mat; b_MEP; g_MEP; a_GMP_mat; b_GMP; g_GMP; b_mat; g_mat];
 
%% input
u=[];
 
%% dynamic equations
f=[
-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x1;
+b_HSC/3*(x1-x2);
+b_HSC/3*(x2-x3);
+b_HSC/3*(x3-x4);
a_HSC_MPP/3*(x1-x5);
a_HSC_MPP/3*(x5-x6);
a_HSC_MPP/3*(x6-x7);
a_HSC_mat/3*(x1-x8);
a_HSC_mat/3*(x8-x9);
a_HSC_mat/3*(x9-x10);
g_HSC/3*(x1-x11);
g_HSC/3*(x11-x12);
g_HSC/3*(x12-x13);
+2*b_HSC/3*x4-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x14;
+b_HSC/3*(x14-x15);
+b_HSC/3*(x15-x16);
+b_HSC/3*(x16-x17);
a_HSC_MPP/3*(x14-x18);
a_HSC_MPP/3*(x18-x19);
a_HSC_MPP/3*(x19-x20);
a_HSC_mat/3*(x14-x21);
a_HSC_mat/3*(x21-x22);
a_HSC_mat/3*(x22-x23);
g_HSC/3*(x14-x24);
g_HSC/3*(x24-x25);
g_HSC/3*(x25-x26);
+2*b_HSC/3*x17-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x27;
+b_HSC/3*(x27-x28);
+b_HSC/3*(x28-x29);
+b_HSC/3*(x29-x30);
a_HSC_MPP/3*(x27-x31);
a_HSC_MPP/3*(x31-x32);
a_HSC_MPP/3*(x32-x33);
a_HSC_mat/3*(x27-x34);
a_HSC_mat/3*(x34-x35);
a_HSC_mat/3*(x35-x36);
g_HSC/3*(x27-x37);
g_HSC/3*(x37-x38);
g_HSC/3*(x38-x39);
+2*b_HSC/3*x30-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x40;
+b_HSC/3*(x40-x41);
+b_HSC/3*(x41-x42);
+b_HSC/3*(x42-x43);
a_HSC_MPP/3*(x40-x44);
a_HSC_MPP/3*(x44-x45);
a_HSC_MPP/3*(x45-x46);
a_HSC_mat/3*(x40-x47);
a_HSC_mat/3*(x47-x48);
a_HSC_mat/3*(x48-x49);
g_HSC/3*(x40-x50);
g_HSC/3*(x50-x51);
g_HSC/3*(x51-x52);
+2*b_HSC/3*x43-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x53;
+b_HSC/3*(x53-x54);
+b_HSC/3*(x54-x55);
+b_HSC/3*(x55-x56);
a_HSC_MPP/3*(x53-x57);
a_HSC_MPP/3*(x57-x58);
a_HSC_MPP/3*(x58-x59);
a_HSC_mat/3*(x53-x60);
a_HSC_mat/3*(x60-x61);
a_HSC_mat/3*(x61-x62);
g_HSC/3*(x53-x63);
g_HSC/3*(x63-x64);
g_HSC/3*(x64-x65);
+2*b_HSC/3*x56-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x66;
+b_HSC/3*(x66-x67);
+b_HSC/3*(x67-x68);
+b_HSC/3*(x68-x69);
a_HSC_MPP/3*(x66-x70);
a_HSC_MPP/3*(x70-x71);
a_HSC_MPP/3*(x71-x72);
a_HSC_mat/3*(x66-x73);
a_HSC_mat/3*(x73-x74);
a_HSC_mat/3*(x74-x75);
g_HSC/3*(x66-x76);
g_HSC/3*(x76-x77);
g_HSC/3*(x77-x78);
+2*b_HSC/3*x69+2*b_HSC/3*x82-(b_HSC/3+a_HSC_MPP/3+a_HSC_mat/3+g_HSC/3)*x79;
+b_HSC/3*(x79-x80);
+b_HSC/3*(x80-x81);
+b_HSC/3*(x81-x82);
a_HSC_MPP/3*(x79-x83);
a_HSC_MPP/3*(x83-x84);
a_HSC_MPP/3*(x84-x85);
a_HSC_mat/3*(x79-x86);
a_HSC_mat/3*(x86-x87);
a_HSC_mat/3*(x87-x88);
g_HSC/3*(x79-x89);
g_HSC/3*(x89-x90);
g_HSC/3*(x90-x91);
a_HSC_MPP/3*x7-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x92;
+b_MPP/3*(x92-x93);
+b_MPP/3*(x93-x94);
+b_MPP/3*(x94-x95);
a_MPP_CMP/3*(x92-x96);
a_MPP_CMP/3*(x96-x97);
a_MPP_CMP/3*(x97-x98);
a_MPP_MLP/3*(x92-x99);
a_MPP_MLP/3*(x99-x100);
a_MPP_MLP/3*(x100-x101);
g_MPP/3*(x92-x102);
g_MPP/3*(x102-x103);
g_MPP/3*(x103-x104);
a_HSC_MPP/3*x20+2*b_MPP/3*x95-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x105;
+b_MPP/3*(x105-x106);
+b_MPP/3*(x106-x107);
+b_MPP/3*(x107-x108);
a_MPP_CMP/3*(x105-x109);
a_MPP_CMP/3*(x109-x110);
a_MPP_CMP/3*(x110-x111);
a_MPP_MLP/3*(x105-x112);
a_MPP_MLP/3*(x112-x113);
a_MPP_MLP/3*(x113-x114);
g_MPP/3*(x105-x115);
g_MPP/3*(x115-x116);
g_MPP/3*(x116-x117);
a_HSC_MPP/3*x33+2*b_MPP/3*x108-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x118;
+b_MPP/3*(x118-x119);
+b_MPP/3*(x119-x120);
+b_MPP/3*(x120-x121);
a_MPP_CMP/3*(x118-x122);
a_MPP_CMP/3*(x122-x123);
a_MPP_CMP/3*(x123-x124);
a_MPP_MLP/3*(x118-x125);
a_MPP_MLP/3*(x125-x126);
a_MPP_MLP/3*(x126-x127);
g_MPP/3*(x118-x128);
g_MPP/3*(x128-x129);
g_MPP/3*(x129-x130);
a_HSC_MPP/3*x46+2*b_MPP/3*x121-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x131;
+b_MPP/3*(x131-x132);
+b_MPP/3*(x132-x133);
+b_MPP/3*(x133-x134);
a_MPP_CMP/3*(x131-x135);
a_MPP_CMP/3*(x135-x136);
a_MPP_CMP/3*(x136-x137);
a_MPP_MLP/3*(x131-x138);
a_MPP_MLP/3*(x138-x139);
a_MPP_MLP/3*(x139-x140);
g_MPP/3*(x131-x141);
g_MPP/3*(x141-x142);
g_MPP/3*(x142-x143);
a_HSC_MPP/3*x59+2*b_MPP/3*x134-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x144;
+b_MPP/3*(x144-x145);
+b_MPP/3*(x145-x146);
+b_MPP/3*(x146-x147);
a_MPP_CMP/3*(x144-x148);
a_MPP_CMP/3*(x148-x149);
a_MPP_CMP/3*(x149-x150);
a_MPP_MLP/3*(x144-x151);
a_MPP_MLP/3*(x151-x152);
a_MPP_MLP/3*(x152-x153);
g_MPP/3*(x144-x154);
g_MPP/3*(x154-x155);
g_MPP/3*(x155-x156);
a_HSC_MPP/3*x72+2*b_MPP/3*x147-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x157;
+b_MPP/3*(x157-x158);
+b_MPP/3*(x158-x159);
+b_MPP/3*(x159-x160);
a_MPP_CMP/3*(x157-x161);
a_MPP_CMP/3*(x161-x162);
a_MPP_CMP/3*(x162-x163);
a_MPP_MLP/3*(x157-x164);
a_MPP_MLP/3*(x164-x165);
a_MPP_MLP/3*(x165-x166);
g_MPP/3*(x157-x167);
g_MPP/3*(x167-x168);
g_MPP/3*(x168-x169);
a_HSC_MPP/3*x85+2*b_MPP/3*x160+2*b_MPP/3*x173-(b_MPP/3+a_MPP_CMP/3+a_MPP_MLP/3+g_MPP/3)*x170;
+b_MPP/3*(x170-x171);
+b_MPP/3*(x171-x172);
+b_MPP/3*(x172-x173);
a_MPP_CMP/3*(x170-x174);
a_MPP_CMP/3*(x174-x175);
a_MPP_CMP/3*(x175-x176);
a_MPP_MLP/3*(x170-x177);
a_MPP_MLP/3*(x177-x178);
a_MPP_MLP/3*(x178-x179);
g_MPP/3*(x170-x180);
g_MPP/3*(x180-x181);
g_MPP/3*(x181-x182);
a_MPP_MLP/3*x101-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x183;
+b_MLP/3*(x183-x184);
+b_MLP/3*(x184-x185);
+b_MLP/3*(x185-x186);
a_MLP/3*(x183-x187);
a_MLP/3*(x187-x188);
a_MLP/3*(x188-x189);
a_MLP_GMP/3*(x183-x190);
a_MLP_GMP/3*(x190-x191);
a_MLP_GMP/3*(x191-x192);
a_MPP_MLP/3*x114+2*b_MLP/3*x186-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x193;
+b_MLP/3*(x193-x194);
+b_MLP/3*(x194-x195);
+b_MLP/3*(x195-x196);
a_MLP/3*(x193-x197);
a_MLP/3*(x197-x198);
a_MLP/3*(x198-x199);
a_MLP_GMP/3*(x193-x200);
a_MLP_GMP/3*(x200-x201);
a_MLP_GMP/3*(x201-x202);
a_MPP_MLP/3*x127+2*b_MLP/3*x196-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x203;
+b_MLP/3*(x203-x204);
+b_MLP/3*(x204-x205);
+b_MLP/3*(x205-x206);
a_MLP/3*(x203-x207);
a_MLP/3*(x207-x208);
a_MLP/3*(x208-x209);
a_MLP_GMP/3*(x203-x210);
a_MLP_GMP/3*(x210-x211);
a_MLP_GMP/3*(x211-x212);
a_MPP_MLP/3*x140+2*b_MLP/3*x206-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x213;
+b_MLP/3*(x213-x214);
+b_MLP/3*(x214-x215);
+b_MLP/3*(x215-x216);
a_MLP/3*(x213-x217);
a_MLP/3*(x217-x218);
a_MLP/3*(x218-x219);
a_MLP_GMP/3*(x213-x220);
a_MLP_GMP/3*(x220-x221);
a_MLP_GMP/3*(x221-x222);
a_MPP_MLP/3*x153+2*b_MLP/3*x216-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x223;
+b_MLP/3*(x223-x224);
+b_MLP/3*(x224-x225);
+b_MLP/3*(x225-x226);
a_MLP/3*(x223-x227);
a_MLP/3*(x227-x228);
a_MLP/3*(x228-x229);
a_MLP_GMP/3*(x223-x230);
a_MLP_GMP/3*(x230-x231);
a_MLP_GMP/3*(x231-x232);
a_MPP_MLP/3*x166+2*b_MLP/3*x226-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x233;
+b_MLP/3*(x233-x234);
+b_MLP/3*(x234-x235);
+b_MLP/3*(x235-x236);
a_MLP/3*(x233-x237);
a_MLP/3*(x237-x238);
a_MLP/3*(x238-x239);
a_MLP_GMP/3*(x233-x240);
a_MLP_GMP/3*(x240-x241);
a_MLP_GMP/3*(x241-x242);
a_MPP_MLP/3*x179+2*b_MLP/3*x236+2*b_MLP/3*x246-(b_MLP/3+a_MLP/3+a_MLP_GMP/3)*x243;
+b_MLP/3*(x243-x244);
+b_MLP/3*(x244-x245);
+b_MLP/3*(x245-x246);
a_MLP/3*(x243-x247);
a_MLP/3*(x247-x248);
a_MLP/3*(x248-x249);
a_MLP_GMP/3*(x243-x250);
a_MLP_GMP/3*(x250-x251);
a_MLP_GMP/3*(x251-x252);
a_MPP_CMP/3*x98-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x253;
+b_CMP/3*(x253-x254);
+b_CMP/3*(x254-x255);
+b_CMP/3*(x255-x256);
a_CMP_MEP/3*(x253-x257);
a_CMP_MEP/3*(x257-x258);
a_CMP_MEP/3*(x258-x259);
a_CMP_GMP/3*(x253-x260);
a_CMP_GMP/3*(x260-x261);
a_CMP_GMP/3*(x261-x262);
g_CMP/3*(x253-x263);
g_CMP/3*(x263-x264);
g_CMP/3*(x264-x265);
a_MPP_CMP/3*x111+2*b_CMP/3*x256-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x266;
+b_CMP/3*(x266-x267);
+b_CMP/3*(x267-x268);
+b_CMP/3*(x268-x269);
a_CMP_MEP/3*(x266-x270);
a_CMP_MEP/3*(x270-x271);
a_CMP_MEP/3*(x271-x272);
a_CMP_GMP/3*(x266-x273);
a_CMP_GMP/3*(x273-x274);
a_CMP_GMP/3*(x274-x275);
g_CMP/3*(x266-x276);
g_CMP/3*(x276-x277);
g_CMP/3*(x277-x278);
a_MPP_CMP/3*x124+2*b_CMP/3*x269-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x279;
+b_CMP/3*(x279-x280);
+b_CMP/3*(x280-x281);
+b_CMP/3*(x281-x282);
a_CMP_MEP/3*(x279-x283);
a_CMP_MEP/3*(x283-x284);
a_CMP_MEP/3*(x284-x285);
a_CMP_GMP/3*(x279-x286);
a_CMP_GMP/3*(x286-x287);
a_CMP_GMP/3*(x287-x288);
g_CMP/3*(x279-x289);
g_CMP/3*(x289-x290);
g_CMP/3*(x290-x291);
a_MPP_CMP/3*x137+2*b_CMP/3*x282-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x292;
+b_CMP/3*(x292-x293);
+b_CMP/3*(x293-x294);
+b_CMP/3*(x294-x295);
a_CMP_MEP/3*(x292-x296);
a_CMP_MEP/3*(x296-x297);
a_CMP_MEP/3*(x297-x298);
a_CMP_GMP/3*(x292-x299);
a_CMP_GMP/3*(x299-x300);
a_CMP_GMP/3*(x300-x301);
g_CMP/3*(x292-x302);
g_CMP/3*(x302-x303);
g_CMP/3*(x303-x304);
a_MPP_CMP/3*x150+2*b_CMP/3*x295-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x305;
+b_CMP/3*(x305-x306);
+b_CMP/3*(x306-x307);
+b_CMP/3*(x307-x308);
a_CMP_MEP/3*(x305-x309);
a_CMP_MEP/3*(x309-x310);
a_CMP_MEP/3*(x310-x311);
a_CMP_GMP/3*(x305-x312);
a_CMP_GMP/3*(x312-x313);
a_CMP_GMP/3*(x313-x314);
g_CMP/3*(x305-x315);
g_CMP/3*(x315-x316);
g_CMP/3*(x316-x317);
a_MPP_CMP/3*x163+2*b_CMP/3*x308-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x318;
+b_CMP/3*(x318-x319);
+b_CMP/3*(x319-x320);
+b_CMP/3*(x320-x321);
a_CMP_MEP/3*(x318-x322);
a_CMP_MEP/3*(x322-x323);
a_CMP_MEP/3*(x323-x324);
a_CMP_GMP/3*(x318-x325);
a_CMP_GMP/3*(x325-x326);
a_CMP_GMP/3*(x326-x327);
g_CMP/3*(x318-x328);
g_CMP/3*(x328-x329);
g_CMP/3*(x329-x330);
a_MPP_CMP/3*x176+2*b_CMP/3*x321+2*b_CMP/3*x334-(b_CMP/3+a_CMP_MEP/3+a_CMP_GMP/3+g_CMP/3)*x331;
+b_CMP/3*(x331-x332);
+b_CMP/3*(x332-x333);
+b_CMP/3*(x333-x334);
a_CMP_MEP/3*(x331-x335);
a_CMP_MEP/3*(x335-x336);
a_CMP_MEP/3*(x336-x337);
a_CMP_GMP/3*(x331-x338);
a_CMP_GMP/3*(x338-x339);
a_CMP_GMP/3*(x339-x340);
g_CMP/3*(x331-x341);
g_CMP/3*(x341-x342);
g_CMP/3*(x342-x343);
a_CMP_GMP/3*x262+a_MLP_GMP/3*x192-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x344;
+b_GMP/3*(x344-x345);
+b_GMP/3*(x345-x346);
+b_GMP/3*(x346-x347);
a_GMP_mat/3*(x344-x348);
a_GMP_mat/3*(x348-x349);
a_GMP_mat/3*(x349-x350);
g_GMP/3*(x344-x351);
g_GMP/3*(x351-x352);
g_GMP/3*(x352-x353);
a_CMP_GMP/3*x275+a_MLP_GMP/3*x202+2*b_GMP/3*x347-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x354;
+b_GMP/3*(x354-x355);
+b_GMP/3*(x355-x356);
+b_GMP/3*(x356-x357);
a_GMP_mat/3*(x354-x358);
a_GMP_mat/3*(x358-x359);
a_GMP_mat/3*(x359-x360);
g_GMP/3*(x354-x361);
g_GMP/3*(x361-x362);
g_GMP/3*(x362-x363);
a_CMP_GMP/3*x288+a_MLP_GMP/3*x212+2*b_GMP/3*x357-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x364;
+b_GMP/3*(x364-x365);
+b_GMP/3*(x365-x366);
+b_GMP/3*(x366-x367);
a_GMP_mat/3*(x364-x368);
a_GMP_mat/3*(x368-x369);
a_GMP_mat/3*(x369-x370);
g_GMP/3*(x364-x371);
g_GMP/3*(x371-x372);
g_GMP/3*(x372-x373);
a_CMP_GMP/3*x301+a_MLP_GMP/3*x222+2*b_GMP/3*x367-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x374;
+b_GMP/3*(x374-x375);
+b_GMP/3*(x375-x376);
+b_GMP/3*(x376-x377);
a_GMP_mat/3*(x374-x378);
a_GMP_mat/3*(x378-x379);
a_GMP_mat/3*(x379-x380);
g_GMP/3*(x374-x381);
g_GMP/3*(x381-x382);
g_GMP/3*(x382-x383);
a_CMP_GMP/3*x314+a_MLP_GMP/3*x232+2*b_GMP/3*x377-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x384;
+b_GMP/3*(x384-x385);
+b_GMP/3*(x385-x386);
+b_GMP/3*(x386-x387);
a_GMP_mat/3*(x384-x388);
a_GMP_mat/3*(x388-x389);
a_GMP_mat/3*(x389-x390);
g_GMP/3*(x384-x391);
g_GMP/3*(x391-x392);
g_GMP/3*(x392-x393);
a_CMP_GMP/3*x327+a_MLP_GMP/3*x242+2*b_GMP/3*x387-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x394;
+b_GMP/3*(x394-x395);
+b_GMP/3*(x395-x396);
+b_GMP/3*(x396-x397);
a_GMP_mat/3*(x394-x398);
a_GMP_mat/3*(x398-x399);
a_GMP_mat/3*(x399-x400);
g_GMP/3*(x394-x401);
g_GMP/3*(x401-x402);
g_GMP/3*(x402-x403);
a_CMP_GMP/3*x340+a_MLP_GMP/3*x252+2*b_GMP/3*x397+2*b_GMP/3*x407-(b_GMP/3+a_GMP_mat/3+g_GMP/3)*x404;
+b_GMP/3*(x404-x405);
+b_GMP/3*(x405-x406);
+b_GMP/3*(x406-x407);
a_GMP_mat/3*(x404-x408);
a_GMP_mat/3*(x408-x409);
a_GMP_mat/3*(x409-x410);
g_GMP/3*(x404-x411);
g_GMP/3*(x411-x412);
g_GMP/3*(x412-x413);
a_CMP_MEP/3*x259-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x414;
+b_MEP/3*(x414-x415);
+b_MEP/3*(x415-x416);
+b_MEP/3*(x416-x417);
a_MEP_mat/3*(x414-x418);
a_MEP_mat/3*(x418-x419);
a_MEP_mat/3*(x419-x420);
g_MEP/3*(x414-x421);
g_MEP/3*(x421-x422);
g_MEP/3*(x422-x423);
a_CMP_MEP/3*x272+2*b_MEP/3*x417-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x424;
+b_MEP/3*(x424-x425);
+b_MEP/3*(x425-x426);
+b_MEP/3*(x426-x427);
a_MEP_mat/3*(x424-x428);
a_MEP_mat/3*(x428-x429);
a_MEP_mat/3*(x429-x430);
g_MEP/3*(x424-x431);
g_MEP/3*(x431-x432);
g_MEP/3*(x432-x433);
a_CMP_MEP/3*x285+2*b_MEP/3*x427-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x434;
+b_MEP/3*(x434-x435);
+b_MEP/3*(x435-x436);
+b_MEP/3*(x436-x437);
a_MEP_mat/3*(x434-x438);
a_MEP_mat/3*(x438-x439);
a_MEP_mat/3*(x439-x440);
g_MEP/3*(x434-x441);
g_MEP/3*(x441-x442);
g_MEP/3*(x442-x443);
a_CMP_MEP/3*x298+2*b_MEP/3*x437-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x444;
+b_MEP/3*(x444-x445);
+b_MEP/3*(x445-x446);
+b_MEP/3*(x446-x447);
a_MEP_mat/3*(x444-x448);
a_MEP_mat/3*(x448-x449);
a_MEP_mat/3*(x449-x450);
g_MEP/3*(x444-x451);
g_MEP/3*(x451-x452);
g_MEP/3*(x452-x453);
a_CMP_MEP/3*x311+2*b_MEP/3*x447-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x454;
+b_MEP/3*(x454-x455);
+b_MEP/3*(x455-x456);
+b_MEP/3*(x456-x457);
a_MEP_mat/3*(x454-x458);
a_MEP_mat/3*(x458-x459);
a_MEP_mat/3*(x459-x460);
g_MEP/3*(x454-x461);
g_MEP/3*(x461-x462);
g_MEP/3*(x462-x463);
a_CMP_MEP/3*x324+2*b_MEP/3*x457-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x464;
+b_MEP/3*(x464-x465);
+b_MEP/3*(x465-x466);
+b_MEP/3*(x466-x467);
a_MEP_mat/3*(x464-x468);
a_MEP_mat/3*(x468-x469);
a_MEP_mat/3*(x469-x470);
g_MEP/3*(x464-x471);
g_MEP/3*(x471-x472);
g_MEP/3*(x472-x473);
a_CMP_MEP/3*x337+2*b_MEP/3*x467+2*b_MEP/3*x477-(b_MEP/3+a_MEP_mat/3+g_MEP/3)*x474;
+b_MEP/3*(x474-x475);
+b_MEP/3*(x475-x476);
+b_MEP/3*(x476-x477);
a_MEP_mat/3*(x474-x478);
a_MEP_mat/3*(x478-x479);
a_MEP_mat/3*(x479-x480);
g_MEP/3*(x474-x481);
g_MEP/3*(x481-x482);
g_MEP/3*(x482-x483);
a_HSC_mat/3*x10+a_MEP_mat/3*x420+a_GMP_mat/3*x350-(b_mat/3+g_mat/3)*x484;
+b_mat/3*(x484-x485);
+b_mat/3*(x485-x486);
+b_mat/3*(x486-x487);
g_mat/3*(x484-x488);
g_mat/3*(x488-x489);
g_mat/3*(x489-x490);
a_HSC_mat/3*x23+a_MEP_mat/3*x430+a_GMP_mat/3*x360+2*b_mat/3*x487-(b_mat/3+g_mat/3)*x491;
+b_mat/3*(x491-x492);
+b_mat/3*(x492-x493);
+b_mat/3*(x493-x494);
g_mat/3*(x491-x495);
g_mat/3*(x495-x496);
g_mat/3*(x496-x497);
a_HSC_mat/3*x36+a_MEP_mat/3*x440+a_GMP_mat/3*x370+2*b_mat/3*x494-(b_mat/3+g_mat/3)*x498;
+b_mat/3*(x498-x499);
+b_mat/3*(x499-x500);
+b_mat/3*(x500-x501);
g_mat/3*(x498-x502);
g_mat/3*(x502-x503);
g_mat/3*(x503-x504);
a_HSC_mat/3*x49+a_MEP_mat/3*x450+a_GMP_mat/3*x380+2*b_mat/3*x501-(b_mat/3+g_mat/3)*x505;
+b_mat/3*(x505-x506);
+b_mat/3*(x506-x507);
+b_mat/3*(x507-x508);
g_mat/3*(x505-x509);
g_mat/3*(x509-x510);
g_mat/3*(x510-x511);
a_HSC_mat/3*x62+a_MEP_mat/3*x460+a_GMP_mat/3*x390+2*b_mat/3*x508-(b_mat/3+g_mat/3)*x512;
+b_mat/3*(x512-x513);
+b_mat/3*(x513-x514);
+b_mat/3*(x514-x515);
g_mat/3*(x512-x516);
g_mat/3*(x516-x517);
g_mat/3*(x517-x518);
a_HSC_mat/3*x75+a_MEP_mat/3*x470+a_GMP_mat/3*x400+2*b_mat/3*x515-(b_mat/3+g_mat/3)*x519;
+b_mat/3*(x519-x520);
+b_mat/3*(x520-x521);
+b_mat/3*(x521-x522);
g_mat/3*(x519-x523);
g_mat/3*(x523-x524);
g_mat/3*(x524-x525);
a_HSC_mat/3*x88+a_MEP_mat/3*x480+a_GMP_mat/3*x410+2*b_mat/3*x522+2*b_mat/3*x529-(b_mat/3+g_mat/3)*x526;
+b_mat/3*(x526-x527);
+b_mat/3*(x527-x528);
+b_mat/3*(x528-x529);
g_mat/3*(x526-x530);
g_mat/3*(x530-x531);
g_mat/3*(x531-x532)
];
 
%% initial conditions
ics = [x0_1, x0_2, x0_3, x0_4, x0_5, x0_6, x0_7];
known_ics = [];

%% output
h =[ x1+ x2+ x3+ x4+ x5+ x6+ x7+ x8+ x9+ x10+ x11+ x12+ x13, x14+ x15+ x16+ x17+ x18+ x19+ x20+ x21+ x22+ x23+ x24+ x25+ x26, x27+ x28+ x29+ x30+ x31+ x32+ x33+ x34+ x35+ x36+ x37+ x38+ x39, x40+ x41+ x42+ x43+ x44+ x45+ x46+ x47+ x48+ x49+ x50+ x51+ x52, x53+ x54+ x55+ x56+ x57+ x58+ x59+ x60+ x61+ x62+ x63+ x64+ x65, x66+ x67+ x68+ x69+ x70+ x71+ x72+ x73+ x74+ x75+ x76+ x77+ x78, x79+ x80+ x81+ x82+ x83+ x84+ x85+ x86+ x87+ x88+ x89+ x90+ x91, x92+ x93+ x94+ x95+ x96+ x97+ x98+ x99+ x100+ x101+ x102+ x103+ x104, x105+ x106+ x107+ x108+ x109+ x110+ x111+ x112+ x113+ x114+ x115+ x116+ x117, x118+ x119+ x120+ x121+ x122+ x123+ x124+ x125+ x126+ x127+ x128+ x129+ x130, x131+ x132+ x133+ x134+ x135+ x136+ x137+ x138+ x139+ x140+ x141+ x142+ x143, x144+ x145+ x146+ x147+ x148+ x149+ x150+ x151+ x152+ x153+ x154+ x155+ x156, x157+ x158+ x159+ x160+ x161+ x162+ x163+ x164+ x165+ x166+ x167+ x168+ x169, x170+ x171+ x172+ x173+ x174+ x175+ x176+ x177+ x178+ x179+ x180+ x181+ x182, x183+ x184+ x185+ x186+ x187+ x188+ x189+ x190+ x191+ x192+ x193+ x194+ x195, x196+ x197+ x198+ x199+ x200+ x201+ x202+ x203+ x204+ x205+ x206+ x207+ x208, x209+ x210+ x211+ x212+ x213+ x214+ x215+ x216+ x217+ x218+ x219+ x220+ x221, x222+ x223+ x224+ x225+ x226+ x227+ x228+ x229+ x230+ x231+ x232+ x233+ x234, x235+ x236+ x237+ x238+ x239+ x240+ x241+ x242+ x243+ x244+ x245+ x246+ x247, x248+ x249+ x250+ x251+ x252+ x253+ x254+ x255+ x256+ x257+ x258+ x259+ x260, x261+ x262+ x263+ x264+ x265+ x266+ x267+ x268+ x269+ x270+ x271+ x272+ x273, x274+ x275+ x276+ x277+ x278+ x279+ x280+ x281+ x282+ x283+ x284+ x285+ x286, x287+ x288+ x289+ x290+ x291+ x292+ x293+ x294+ x295+ x296+ x297+ x298+ x299, x300+ x301+ x302+ x303+ x304+ x305+ x306+ x307+ x308+ x309+ x310+ x311+ x312, x313+ x314+ x315+ x316+ x317+ x318+ x319+ x320+ x321+ x322+ x323+ x324+ x325, x326+ x327+ x328+ x329+ x330+ x331+ x332+ x333+ x334+ x335+ x336+ x337+ x338, x339+ x340+ x341+ x342+ x343+ x344+ x345+ x346+ x347+ x348+ x349+ x350+ x351, x352+ x353+ x354+ x355+ x356+ x357+ x358+ x359+ x360+ x361+ x362+ x363+ x364, x365+ x366+ x367+ x368+ x369+ x370+ x371+ x372+ x373+ x374+ x375+ x376+ x377, x378+ x379+ x380+ x381+ x382+ x383+ x384+ x385+ x386+ x387+ x388+ x389+ x390, x391+ x392+ x393+ x394+ x395+ x396+ x397+ x398+ x399+ x400+ x401+ x402+ x403, x404+ x405+ x406+ x407+ x408+ x409+ x410+ x411+ x412+ x413+ x414+ x415+ x416, x417+ x418+ x419+ x420+ x421+ x422+ x423+ x424+ x425+ x426+ x427+ x428+ x429, x430+ x431+ x432+ x433+ x434+ x435+ x436+ x437+ x438+ x439+ x440+ x441+ x442, x443+ x444+ x445+ x446+ x447+ x448+ x449+ x450+ x451+ x452+ x453+ x454+ x455, x456+ x457+ x458+ x459+ x460+ x461+ x462+ x463+ x464+ x465+ x466+ x467+ x468, x469+ x470+ x471+ x472+ x473+ x474+ x475+ x476+ x477+ x478+ x479+ x480+ x481, x482+ x483+ x484+ x485+ x486+ x487+ x488+ x489+ x490+ x491+ x492+ x493+ x494, x495+ x496+ x497+ x498+ x499+ x500+ x501+ x502+ x503+ x504+ x505+ x506+ x507, x508+ x509+ x510+ x511+ x512+ x513+ x514+ x515+ x516+ x517+ x518+ x519+ x520, x521+ x522+ x523+ x524+ x525+ x526+ x527+ x528+ x529+ x530+ x531+ x532];

save('hematopoiesis_model_C','x','p','h','f','u','ics','known_ics');



































































































































































































































































































