function [model] = model_H_4_syms()
% set the parametrisation of the problem options are 'log', 'log10' and
% 'lin' (default).
% model.param = 'log10';

%%
% STATES

% create state syms
syms x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 x55 x56 x57 x58 x59 x60 x61 x62 x63 x64 x65 x66 x67 x68 x69 x70 x71 x72 x73 x74 x75 x76 x77 x78 x79 x80 x81 x82 x83 x84 x85 x86 x87 x88 x89 x90 x91 x92 x93 x94 x95 x96 x97 x98 x99 x100 x101 x102 x103 x104 x105 x106 x107 x108 x109 x110 x111 x112 x113 x114 x115 x116 x117 x118 x119 x120 x121 x122 x123 x124 x125 x126 x127 x128 x129 x130 x131 x132 x133 x134 x135 x136 x137 x138 x139 x140 x141 x142 x143 x144 x145 x146 x147 x148 x149 x150 x151 x152 x153 x154 x155 x156 x157 x158 x159 x160 x161 x162 x163 x164 x165 x166 x167 x168 x169 x170 x171 x172 x173 x174 x175 x176 x177 x178 x179 x180 x181 x182 x183 x184 x185 x186 x187 x188 x189 x190 x191 x192 x193 x194 x195 x196 x197 x198 x199 x200 x201 x202 x203 x204 x205 x206 x207 x208 x209 x210 x211 x212 x213 x214 x215 x216 x217 x218 x219 x220 x221 x222 x223 x224 x225 x226 x227 x228 x229 x230 x231 x232 x233 x234 x235 x236 x237 x238 x239 x240 x241 x242 x243 x244 x245 x246 x247 x248 x249 x250 x251 x252 x253 x254 x255 x256 x257 x258 x259 x260 x261 x262 x263 x264 x265 x266 x267 x268 x269 x270 x271 x272 x273 x274 x275 x276 x277 x278 x279 x280 x281 x282 x283 x284 x285 x286 x287 x288 x289 x290 x291 x292 x293 x294 x295 x296 x297 x298 x299 x300 x301 x302 x303 x304 x305 x306 x307 x308 x309 x310 x311 x312 x313 x314 x315 x316 x317 x318 x319 x320 x321 x322 x323 x324 x325 x326 x327 x328 x329 x330 x331 x332 x333 x334 x335 x336 x337 x338 x339 x340 x341 x342 x343 x344 x345 x346 x347 x348 x349 x350 x351 x352 x353 x354 x355 x356 x357 x358 x359 x360 x361 x362 x363 x364 x365 x366 x367 x368 x369 x370 x371 x372 x373 x374 x375 x376 x377 x378 x379 x380 x381 x382 x383 x384 x385 x386 x387 x388 x389 x390 x391 x392 x393 x394 x395 x396 x397 x398 x399 x400 x401 x402 x403 x404 x405 x406 x407 x408 x409 x410 x411 x412 x413 x414 x415 x416 x417 x418 x419 x420 x421 x422 x423 x424 x425 x426 x427 x428 x429 x430 x431 x432 x433 x434 x435 x436 x437 x438 x439 x440 x441 x442 x443 x444 x445 x446 x447 x448 x449 x450 x451 x452 x453 x454 x455 x456 x457 x458 x459 x460 x461 x462 x463 x464 x465 x466 x467 x468 x469 x470 x471 x472 x473 x474 x475 x476 x477 x478 x479 x480 x481 x482 x483 x484 x485 x486 x487 x488 x489 x490 x491 x492 x493 x494 x495 x496 x497 x498 x499 x500 x501 x502 x503 x504 x505 x506 x507 x508 x509 x510 x511 x512 x513 x514 x515 x516 x517 x518 x519 x520 x521 x522 x523 x524 x525 x526 x527 x528 x529 x530 x531 x532 x533 x534 x535 x536 x537 x538 x539 x540 x541 x542 x543 x544 x545 x546 x547 x548 x549 x550 x551 x552 x553 x554 x555 x556 x557 x558 x559 x560 x561 x562 x563 x564 x565 x566 x567 x568 x569 x570 x571 x572 x573 x574 x575 x576 x577 x578 x579 x580 x581 x582 x583 x584 x585 x586 x587 x588 x589 x590 x591 x592 x593 x594 x595 x596 x597 x598 x599 x600 x601 x602 x603 x604 x605 x606 x607 x608 x609 x610 x611 x612 x613 x614 x615 x616 x617 x618 x619 x620 x621 x622 x623 x624 x625 x626 x627 x628 x629 x630 x631 x632 x633 x634 x635 x636 x637 x638 x639 x640 x641 x642 x643 x644 x645 x646 x647 x648 x649 x650 x651 x652 x653 x654 x655 x656 x657 x658 x659 x660 x661 x662 x663 x664 x665 x666 x667 x668 x669 x670 x671 x672 x673 x674 x675 x676 x677 x678 x679 x680 x681 x682 x683 x684 x685 x686 x687 x688 x689 x690 x691 x692 x693

% create state vector
x = [
 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 x55 x56 x57 x58 x59 x60 x61 x62 x63 x64 x65 x66 x67 x68 x69 x70 x71 x72 x73 x74 x75 x76 x77 x78 x79 x80 x81 x82 x83 x84 x85 x86 x87 x88 x89 x90 x91 x92 x93 x94 x95 x96 x97 x98 x99 x100 x101 x102 x103 x104 x105 x106 x107 x108 x109 x110 x111 x112 x113 x114 x115 x116 x117 x118 x119 x120 x121 x122 x123 x124 x125 x126 x127 x128 x129 x130 x131 x132 x133 x134 x135 x136 x137 x138 x139 x140 x141 x142 x143 x144 x145 x146 x147 x148 x149 x150 x151 x152 x153 x154 x155 x156 x157 x158 x159 x160 x161 x162 x163 x164 x165 x166 x167 x168 x169 x170 x171 x172 x173 x174 x175 x176 x177 x178 x179 x180 x181 x182 x183 x184 x185 x186 x187 x188 x189 x190 x191 x192 x193 x194 x195 x196 x197 x198 x199 x200 x201 x202 x203 x204 x205 x206 x207 x208 x209 x210 x211 x212 x213 x214 x215 x216 x217 x218 x219 x220 x221 x222 x223 x224 x225 x226 x227 x228 x229 x230 x231 x232 x233 x234 x235 x236 x237 x238 x239 x240 x241 x242 x243 x244 x245 x246 x247 x248 x249 x250 x251 x252 x253 x254 x255 x256 x257 x258 x259 x260 x261 x262 x263 x264 x265 x266 x267 x268 x269 x270 x271 x272 x273 x274 x275 x276 x277 x278 x279 x280 x281 x282 x283 x284 x285 x286 x287 x288 x289 x290 x291 x292 x293 x294 x295 x296 x297 x298 x299 x300 x301 x302 x303 x304 x305 x306 x307 x308 x309 x310 x311 x312 x313 x314 x315 x316 x317 x318 x319 x320 x321 x322 x323 x324 x325 x326 x327 x328 x329 x330 x331 x332 x333 x334 x335 x336 x337 x338 x339 x340 x341 x342 x343 x344 x345 x346 x347 x348 x349 x350 x351 x352 x353 x354 x355 x356 x357 x358 x359 x360 x361 x362 x363 x364 x365 x366 x367 x368 x369 x370 x371 x372 x373 x374 x375 x376 x377 x378 x379 x380 x381 x382 x383 x384 x385 x386 x387 x388 x389 x390 x391 x392 x393 x394 x395 x396 x397 x398 x399 x400 x401 x402 x403 x404 x405 x406 x407 x408 x409 x410 x411 x412 x413 x414 x415 x416 x417 x418 x419 x420 x421 x422 x423 x424 x425 x426 x427 x428 x429 x430 x431 x432 x433 x434 x435 x436 x437 x438 x439 x440 x441 x442 x443 x444 x445 x446 x447 x448 x449 x450 x451 x452 x453 x454 x455 x456 x457 x458 x459 x460 x461 x462 x463 x464 x465 x466 x467 x468 x469 x470 x471 x472 x473 x474 x475 x476 x477 x478 x479 x480 x481 x482 x483 x484 x485 x486 x487 x488 x489 x490 x491 x492 x493 x494 x495 x496 x497 x498 x499 x500 x501 x502 x503 x504 x505 x506 x507 x508 x509 x510 x511 x512 x513 x514 x515 x516 x517 x518 x519 x520 x521 x522 x523 x524 x525 x526 x527 x528 x529 x530 x531 x532 x533 x534 x535 x536 x537 x538 x539 x540 x541 x542 x543 x544 x545 x546 x547 x548 x549 x550 x551 x552 x553 x554 x555 x556 x557 x558 x559 x560 x561 x562 x563 x564 x565 x566 x567 x568 x569 x570 x571 x572 x573 x574 x575 x576 x577 x578 x579 x580 x581 x582 x583 x584 x585 x586 x587 x588 x589 x590 x591 x592 x593 x594 x595 x596 x597 x598 x599 x600 x601 x602 x603 x604 x605 x606 x607 x608 x609 x610 x611 x612 x613 x614 x615 x616 x617 x618 x619 x620 x621 x622 x623 x624 x625 x626 x627 x628 x629 x630 x631 x632 x633 x634 x635 x636 x637 x638 x639 x640 x641 x642 x643 x644 x645 x646 x647 x648 x649 x650 x651 x652 x653 x654 x655 x656 x657 x658 x659 x660 x661 x662 x663 x664 x665 x666 x667 x668 x669 x670 x671 x672 x673 x674 x675 x676 x677 x678 x679 x680 x681 x682 x683 x684 x685 x686 x687 x688 x689 x690 x691 x692 x693
];

%%
% PARAMETERS ( for these sensitivities will be computed )

% create parameter syms
syms x0_1 x0_2 x0_3 x0_4 x0_5 x0_6 x0_7 a_HSC_CMP a_HSC_MPP b_HSC g_HSC a_CMP_MEP a_CMP_GMP b_CMP g_CMP a_MPP_GMP a_MPP_MLP a_MPP_MEP b_MPP g_MPP a_MLP b_MLP a_MEP_mat b_MEP g_MEP a_GMP_mat b_GMP g_GMP b_mat g_mat

% create parameter vector 
p= [x0_1 x0_2 x0_3 x0_4 x0_5 x0_6 x0_7 a_HSC_CMP a_HSC_MPP b_HSC g_HSC a_CMP_MEP a_CMP_GMP b_CMP g_CMP a_MPP_GMP a_MPP_MLP a_MPP_MEP b_MPP g_MPP a_MLP b_MLP a_MEP_mat b_MEP g_MEP a_GMP_mat b_GMP g_GMP b_mat g_mat];

%%
% CONSTANTS ( for these no sensitivities will be computed )
% this part is optional and can be ommited

% create constants syms
k=[];
% k=[x0_1, x0_2, x0_3, x0_4, x0_5, x0_6, x0_7, x0_8];


%%
% SYSTEM EQUATIONS
% create symbolic variable for time
syms t

xdot = sym(zeros(size(x)));


%HSC
xdot(1) =-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x1;
xdot(2) =+b_HSC*4*(x1-x2);
xdot(3) =+b_HSC*4*(x2-x3);
xdot(4) =+b_HSC*4*(x3-x4);
xdot(5) =+b_HSC*4*(x4-x5);
xdot(6) =a_HSC_CMP*4*(x1-x6);
xdot(7) =a_HSC_CMP*4*(x6-x7);
xdot(8) =a_HSC_CMP*4*(x7-x8);
xdot(9) =a_HSC_CMP*4*(x8-x9);
xdot(10) =a_HSC_MPP*4*(x1-x10);
xdot(11) =a_HSC_MPP*4*(x10-x11);
xdot(12) =a_HSC_MPP*4*(x11-x12);
xdot(13) =a_HSC_MPP*4*(x12-x13);
xdot(14) =g_HSC*4*(x1-x14);
xdot(15) =g_HSC*4*(x14-x15);
xdot(16) =g_HSC*4*(x15-x16);
xdot(17) =g_HSC*4*(x16-x17);
xdot(18) =+2*b_HSC*4*x5-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x18;
xdot(19) =+b_HSC*4*(x18-x19);
xdot(20) =+b_HSC*4*(x19-x20);
xdot(21) =+b_HSC*4*(x20-x21);
xdot(22) =+b_HSC*4*(x21-x22);
xdot(23) =a_HSC_CMP*4*(x18-x23);
xdot(24) =a_HSC_CMP*4*(x23-x24);
xdot(25) =a_HSC_CMP*4*(x24-x25);
xdot(26) =a_HSC_CMP*4*(x25-x26);
xdot(27) =a_HSC_MPP*4*(x18-x27);
xdot(28) =a_HSC_MPP*4*(x27-x28);
xdot(29) =a_HSC_MPP*4*(x28-x29);
xdot(30) =a_HSC_MPP*4*(x29-x30);
xdot(31) =g_HSC*4*(x18-x31);
xdot(32) =g_HSC*4*(x31-x32);
xdot(33) =g_HSC*4*(x32-x33);
xdot(34) =g_HSC*4*(x33-x34);
xdot(35) =+2*b_HSC*4*x22-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x35;
xdot(36) =+b_HSC*4*(x35-x36);
xdot(37) =+b_HSC*4*(x36-x37);
xdot(38) =+b_HSC*4*(x37-x38);
xdot(39) =+b_HSC*4*(x38-x39);
xdot(40) =a_HSC_CMP*4*(x35-x40);
xdot(41) =a_HSC_CMP*4*(x40-x41);
xdot(42) =a_HSC_CMP*4*(x41-x42);
xdot(43) =a_HSC_CMP*4*(x42-x43);
xdot(44) =a_HSC_MPP*4*(x35-x44);
xdot(45) =a_HSC_MPP*4*(x44-x45);
xdot(46) =a_HSC_MPP*4*(x45-x46);
xdot(47) =a_HSC_MPP*4*(x46-x47);
xdot(48) =g_HSC*4*(x35-x48);
xdot(49) =g_HSC*4*(x48-x49);
xdot(50) =g_HSC*4*(x49-x50);
xdot(51) =g_HSC*4*(x50-x51);
xdot(52) =+2*b_HSC*4*x39-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x52;
xdot(53) =+b_HSC*4*(x52-x53);
xdot(54) =+b_HSC*4*(x53-x54);
xdot(55) =+b_HSC*4*(x54-x55);
xdot(56) =+b_HSC*4*(x55-x56);
xdot(57) =a_HSC_CMP*4*(x52-x57);
xdot(58) =a_HSC_CMP*4*(x57-x58);
xdot(59) =a_HSC_CMP*4*(x58-x59);
xdot(60) =a_HSC_CMP*4*(x59-x60);
xdot(61) =a_HSC_MPP*4*(x52-x61);
xdot(62) =a_HSC_MPP*4*(x61-x62);
xdot(63) =a_HSC_MPP*4*(x62-x63);
xdot(64) =a_HSC_MPP*4*(x63-x64);
xdot(65) =g_HSC*4*(x52-x65);
xdot(66) =g_HSC*4*(x65-x66);
xdot(67) =g_HSC*4*(x66-x67);
xdot(68) =g_HSC*4*(x67-x68);
xdot(69) =+2*b_HSC*4*x56-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x69;
xdot(70) =+b_HSC*4*(x69-x70);
xdot(71) =+b_HSC*4*(x70-x71);
xdot(72) =+b_HSC*4*(x71-x72);
xdot(73) =+b_HSC*4*(x72-x73);
xdot(74) =a_HSC_CMP*4*(x69-x74);
xdot(75) =a_HSC_CMP*4*(x74-x75);
xdot(76) =a_HSC_CMP*4*(x75-x76);
xdot(77) =a_HSC_CMP*4*(x76-x77);
xdot(78) =a_HSC_MPP*4*(x69-x78);
xdot(79) =a_HSC_MPP*4*(x78-x79);
xdot(80) =a_HSC_MPP*4*(x79-x80);
xdot(81) =a_HSC_MPP*4*(x80-x81);
xdot(82) =g_HSC*4*(x69-x82);
xdot(83) =g_HSC*4*(x82-x83);
xdot(84) =g_HSC*4*(x83-x84);
xdot(85) =g_HSC*4*(x84-x85);
xdot(86) =+2*b_HSC*4*x73-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x86;
xdot(87) =+b_HSC*4*(x86-x87);
xdot(88) =+b_HSC*4*(x87-x88);
xdot(89) =+b_HSC*4*(x88-x89);
xdot(90) =+b_HSC*4*(x89-x90);
xdot(91) =a_HSC_CMP*4*(x86-x91);
xdot(92) =a_HSC_CMP*4*(x91-x92);
xdot(93) =a_HSC_CMP*4*(x92-x93);
xdot(94) =a_HSC_CMP*4*(x93-x94);
xdot(95) =a_HSC_MPP*4*(x86-x95);
xdot(96) =a_HSC_MPP*4*(x95-x96);
xdot(97) =a_HSC_MPP*4*(x96-x97);
xdot(98) =a_HSC_MPP*4*(x97-x98);
xdot(99) =g_HSC*4*(x86-x99);
xdot(100) =g_HSC*4*(x99-x100);
xdot(101) =g_HSC*4*(x100-x101);
xdot(102) =g_HSC*4*(x101-x102);
xdot(103) =+2*b_HSC*4*x90+2*b_HSC*4*x107-(b_HSC*4+a_HSC_CMP*4+a_HSC_MPP*4+g_HSC*4)*x103;
xdot(104) =+b_HSC*4*(x103-x104);
xdot(105) =+b_HSC*4*(x104-x105);
xdot(106) =+b_HSC*4*(x105-x106);
xdot(107) =+b_HSC*4*(x106-x107);
xdot(108) =a_HSC_CMP*4*(x103-x108);
xdot(109) =a_HSC_CMP*4*(x108-x109);
xdot(110) =a_HSC_CMP*4*(x109-x110);
xdot(111) =a_HSC_CMP*4*(x110-x111);
xdot(112) =a_HSC_MPP*4*(x103-x112);
xdot(113) =a_HSC_MPP*4*(x112-x113);
xdot(114) =a_HSC_MPP*4*(x113-x114);
xdot(115) =a_HSC_MPP*4*(x114-x115);
xdot(116) =g_HSC*4*(x103-x116);
xdot(117) =g_HSC*4*(x116-x117);
xdot(118) =g_HSC*4*(x117-x118);
xdot(119) =g_HSC*4*(x118-x119);

%MPP
xdot(120) =a_HSC_MPP*4*x13-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x120;
xdot(121) =+b_MPP*4*(x120-x121);
xdot(122) =+b_MPP*4*(x121-x122);
xdot(123) =+b_MPP*4*(x122-x123);
xdot(124) =+b_MPP*4*(x123-x124);
xdot(125) =a_MPP_GMP*4*(x120-x125);
xdot(126) =a_MPP_GMP*4*(x125-x126);
xdot(127) =a_MPP_GMP*4*(x126-x127);
xdot(128) =a_MPP_GMP*4*(x127-x128);
xdot(129) =a_MPP_MLP*4*(x120-x129);
xdot(130) =a_MPP_MLP*4*(x129-x130);
xdot(131) =a_MPP_MLP*4*(x130-x131);
xdot(132) =a_MPP_MLP*4*(x131-x132);
xdot(133) =a_MPP_MEP*4*(x120-x133);
xdot(134) =a_MPP_MEP*4*(x133-x134);
xdot(135) =a_MPP_MEP*4*(x134-x135);
xdot(136) =a_MPP_MEP*4*(x135-x136);
xdot(137) =g_MPP*4*(x120-x137);
xdot(138) =g_MPP*4*(x137-x138);
xdot(139) =g_MPP*4*(x138-x139);
xdot(140) =g_MPP*4*(x139-x140);
xdot(141) =a_HSC_MPP*4*x30+2*b_MPP*4*x124-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x141;
xdot(142) =+b_MPP*4*(x141-x142);
xdot(143) =+b_MPP*4*(x142-x143);
xdot(144) =+b_MPP*4*(x143-x144);
xdot(145) =+b_MPP*4*(x144-x145);
xdot(146) =a_MPP_GMP*4*(x141-x146);
xdot(147) =a_MPP_GMP*4*(x146-x147);
xdot(148) =a_MPP_GMP*4*(x147-x148);
xdot(149) =a_MPP_GMP*4*(x148-x149);
xdot(150) =a_MPP_MLP*4*(x141-x150);
xdot(151) =a_MPP_MLP*4*(x150-x151);
xdot(152) =a_MPP_MLP*4*(x151-x152);
xdot(153) =a_MPP_MLP*4*(x152-x153);
xdot(154) =a_MPP_MEP*4*(x141-x154);
xdot(155) =a_MPP_MEP*4*(x154-x155);
xdot(156) =a_MPP_MEP*4*(x155-x156);
xdot(157) =a_MPP_MEP*4*(x156-x157);
xdot(158) =g_MPP*4*(x141-x158);
xdot(159) =g_MPP*4*(x158-x159);
xdot(160) =g_MPP*4*(x159-x160);
xdot(161) =g_MPP*4*(x160-x161);
xdot(162) =a_HSC_MPP*4*x47+2*b_MPP*4*x145-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x162;
xdot(163) =+b_MPP*4*(x162-x163);
xdot(164) =+b_MPP*4*(x163-x164);
xdot(165) =+b_MPP*4*(x164-x165);
xdot(166) =+b_MPP*4*(x165-x166);
xdot(167) =a_MPP_GMP*4*(x162-x167);
xdot(168) =a_MPP_GMP*4*(x167-x168);
xdot(169) =a_MPP_GMP*4*(x168-x169);
xdot(170) =a_MPP_GMP*4*(x169-x170);
xdot(171) =a_MPP_MLP*4*(x162-x171);
xdot(172) =a_MPP_MLP*4*(x171-x172);
xdot(173) =a_MPP_MLP*4*(x172-x173);
xdot(174) =a_MPP_MLP*4*(x173-x174);
xdot(175) =a_MPP_MEP*4*(x162-x175);
xdot(176) =a_MPP_MEP*4*(x175-x176);
xdot(177) =a_MPP_MEP*4*(x176-x177);
xdot(178) =a_MPP_MEP*4*(x177-x178);
xdot(179) =g_MPP*4*(x162-x179);
xdot(180) =g_MPP*4*(x179-x180);
xdot(181) =g_MPP*4*(x180-x181);
xdot(182) =g_MPP*4*(x181-x182);
xdot(183) =a_HSC_MPP*4*x64+2*b_MPP*4*x166-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x183;
xdot(184) =+b_MPP*4*(x183-x184);
xdot(185) =+b_MPP*4*(x184-x185);
xdot(186) =+b_MPP*4*(x185-x186);
xdot(187) =+b_MPP*4*(x186-x187);
xdot(188) =a_MPP_GMP*4*(x183-x188);
xdot(189) =a_MPP_GMP*4*(x188-x189);
xdot(190) =a_MPP_GMP*4*(x189-x190);
xdot(191) =a_MPP_GMP*4*(x190-x191);
xdot(192) =a_MPP_MLP*4*(x183-x192);
xdot(193) =a_MPP_MLP*4*(x192-x193);
xdot(194) =a_MPP_MLP*4*(x193-x194);
xdot(195) =a_MPP_MLP*4*(x194-x195);
xdot(196) =a_MPP_MEP*4*(x183-x196);
xdot(197) =a_MPP_MEP*4*(x196-x197);
xdot(198) =a_MPP_MEP*4*(x197-x198);
xdot(199) =a_MPP_MEP*4*(x198-x199);
xdot(200) =g_MPP*4*(x183-x200);
xdot(201) =g_MPP*4*(x200-x201);
xdot(202) =g_MPP*4*(x201-x202);
xdot(203) =g_MPP*4*(x202-x203);
xdot(204) =a_HSC_MPP*4*x81+2*b_MPP*4*x187-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x204;
xdot(205) =+b_MPP*4*(x204-x205);
xdot(206) =+b_MPP*4*(x205-x206);
xdot(207) =+b_MPP*4*(x206-x207);
xdot(208) =+b_MPP*4*(x207-x208);
xdot(209) =a_MPP_GMP*4*(x204-x209);
xdot(210) =a_MPP_GMP*4*(x209-x210);
xdot(211) =a_MPP_GMP*4*(x210-x211);
xdot(212) =a_MPP_GMP*4*(x211-x212);
xdot(213) =a_MPP_MLP*4*(x204-x213);
xdot(214) =a_MPP_MLP*4*(x213-x214);
xdot(215) =a_MPP_MLP*4*(x214-x215);
xdot(216) =a_MPP_MLP*4*(x215-x216);
xdot(217) =a_MPP_MEP*4*(x204-x217);
xdot(218) =a_MPP_MEP*4*(x217-x218);
xdot(219) =a_MPP_MEP*4*(x218-x219);
xdot(220) =a_MPP_MEP*4*(x219-x220);
xdot(221) =g_MPP*4*(x204-x221);
xdot(222) =g_MPP*4*(x221-x222);
xdot(223) =g_MPP*4*(x222-x223);
xdot(224) =g_MPP*4*(x223-x224);
xdot(225) =a_HSC_MPP*4*x98+2*b_MPP*4*x208-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x225;
xdot(226) =+b_MPP*4*(x225-x226);
xdot(227) =+b_MPP*4*(x226-x227);
xdot(228) =+b_MPP*4*(x227-x228);
xdot(229) =+b_MPP*4*(x228-x229);
xdot(230) =a_MPP_GMP*4*(x225-x230);
xdot(231) =a_MPP_GMP*4*(x230-x231);
xdot(232) =a_MPP_GMP*4*(x231-x232);
xdot(233) =a_MPP_GMP*4*(x232-x233);
xdot(234) =a_MPP_MLP*4*(x225-x234);
xdot(235) =a_MPP_MLP*4*(x234-x235);
xdot(236) =a_MPP_MLP*4*(x235-x236);
xdot(237) =a_MPP_MLP*4*(x236-x237);
xdot(238) =a_MPP_MEP*4*(x225-x238);
xdot(239) =a_MPP_MEP*4*(x238-x239);
xdot(240) =a_MPP_MEP*4*(x239-x240);
xdot(241) =a_MPP_MEP*4*(x240-x241);
xdot(242) =g_MPP*4*(x225-x242);
xdot(243) =g_MPP*4*(x242-x243);
xdot(244) =g_MPP*4*(x243-x244);
xdot(245) =g_MPP*4*(x244-x245);
xdot(246) =a_HSC_MPP*4*x115+2*b_MPP*4*x229+2*b_MPP*4*x250-(b_MPP*4++a_MPP_GMP*4+a_MPP_MLP*4+a_MPP_MEP*4+g_MPP*4)*x246;
xdot(247) =+b_MPP*4*(x246-x247);
xdot(248) =+b_MPP*4*(x247-x248);
xdot(249) =+b_MPP*4*(x248-x249);
xdot(250) =+b_MPP*4*(x249-x250);
xdot(251) =a_MPP_GMP*4*(x246-x251);
xdot(252) =a_MPP_GMP*4*(x251-x252);
xdot(253) =a_MPP_GMP*4*(x252-x253);
xdot(254) =a_MPP_GMP*4*(x253-x254);
xdot(255) =a_MPP_MLP*4*(x246-x255);
xdot(256) =a_MPP_MLP*4*(x255-x256);
xdot(257) =a_MPP_MLP*4*(x256-x257);
xdot(258) =a_MPP_MLP*4*(x257-x258);
xdot(259) =a_MPP_MEP*4*(x246-x259);
xdot(260) =a_MPP_MEP*4*(x259-x260);
xdot(261) =a_MPP_MEP*4*(x260-x261);
xdot(262) =a_MPP_MEP*4*(x261-x262);
xdot(263) =g_MPP*4*(x246-x263);
xdot(264) =g_MPP*4*(x263-x264);
xdot(265) =g_MPP*4*(x264-x265);
xdot(266) =g_MPP*4*(x265-x266);

%MLP
xdot(267) =a_MPP_MLP*4*x132-(b_MLP*4+a_MLP*4)*x267;
xdot(268) =+b_MLP*4*(x267-x268);
xdot(269) =+b_MLP*4*(x268-x269);
xdot(270) =+b_MLP*4*(x269-x270);
xdot(271) =+b_MLP*4*(x270-x271);
xdot(272) =a_MLP*4*(x267-x272);
xdot(273) =a_MLP*4*(x272-x273);
xdot(274) =a_MLP*4*(x273-x274);
xdot(275) =a_MLP*4*(x274-x275);
xdot(276) =a_MPP_MLP*4*x153+2*b_MLP*4*x271-(b_MLP*4+a_MLP*4)*x276;
xdot(277) =+b_MLP*4*(x276-x277);
xdot(278) =+b_MLP*4*(x277-x278);
xdot(279) =+b_MLP*4*(x278-x279);
xdot(280) =+b_MLP*4*(x279-x280);
xdot(281) =a_MLP*4*(x276-x281);
xdot(282) =a_MLP*4*(x281-x282);
xdot(283) =a_MLP*4*(x282-x283);
xdot(284) =a_MLP*4*(x283-x284);
xdot(285) =a_MPP_MLP*4*x174+2*b_MLP*4*x280-(b_MLP*4+a_MLP*4)*x285;
xdot(286) =+b_MLP*4*(x285-x286);
xdot(287) =+b_MLP*4*(x286-x287);
xdot(288) =+b_MLP*4*(x287-x288);
xdot(289) =+b_MLP*4*(x288-x289);
xdot(290) =a_MLP*4*(x285-x290);
xdot(291) =a_MLP*4*(x290-x291);
xdot(292) =a_MLP*4*(x291-x292);
xdot(293) =a_MLP*4*(x292-x293);
xdot(294) =a_MPP_MLP*4*x195+2*b_MLP*4*x289-(b_MLP*4+a_MLP*4)*x294;
xdot(295) =+b_MLP*4*(x294-x295);
xdot(296) =+b_MLP*4*(x295-x296);
xdot(297) =+b_MLP*4*(x296-x297);
xdot(298) =+b_MLP*4*(x297-x298);
xdot(299) =a_MLP*4*(x294-x299);
xdot(300) =a_MLP*4*(x299-x300);
xdot(301) =a_MLP*4*(x300-x301);
xdot(302) =a_MLP*4*(x301-x302);
xdot(303) =a_MPP_MLP*4*x216+2*b_MLP*4*x298-(b_MLP*4+a_MLP*4)*x303;
xdot(304) =+b_MLP*4*(x303-x304);
xdot(305) =+b_MLP*4*(x304-x305);
xdot(306) =+b_MLP*4*(x305-x306);
xdot(307) =+b_MLP*4*(x306-x307);
xdot(308) =a_MLP*4*(x303-x308);
xdot(309) =a_MLP*4*(x308-x309);
xdot(310) =a_MLP*4*(x309-x310);
xdot(311) =a_MLP*4*(x310-x311);
xdot(312) =a_MPP_MLP*4*x237+2*b_MLP*4*x307-(b_MLP*4+a_MLP*4)*x312;
xdot(313) =+b_MLP*4*(x312-x313);
xdot(314) =+b_MLP*4*(x313-x314);
xdot(315) =+b_MLP*4*(x314-x315);
xdot(316) =+b_MLP*4*(x315-x316);
xdot(317) =a_MLP*4*(x312-x317);
xdot(318) =a_MLP*4*(x317-x318);
xdot(319) =a_MLP*4*(x318-x319);
xdot(320) =a_MLP*4*(x319-x320);
xdot(321) =a_MPP_MLP*4*x258+2*b_MLP*4*x316+2*b_MLP*4*x325-(b_MLP*4+a_MLP*4)*x321;
xdot(322) =+b_MLP*4*(x321-x322);
xdot(323) =+b_MLP*4*(x322-x323);
xdot(324) =+b_MLP*4*(x323-x324);
xdot(325) =+b_MLP*4*(x324-x325);
xdot(326) =a_MLP*4*(x321-x326);
xdot(327) =a_MLP*4*(x326-x327);
xdot(328) =a_MLP*4*(x327-x328);
xdot(329) =a_MLP*4*(x328-x329);

%CMP
xdot(330) =a_HSC_CMP*4*x9-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x330;
xdot(331) =+b_CMP*4*(x330-x331);
xdot(332) =+b_CMP*4*(x331-x332);
xdot(333) =+b_CMP*4*(x332-x333);
xdot(334) =+b_CMP*4*(x333-x334);
xdot(335) =a_CMP_MEP*4*(x330-x335);
xdot(336) =a_CMP_MEP*4*(x335-x336);
xdot(337) =a_CMP_MEP*4*(x336-x337);
xdot(338) =a_CMP_MEP*4*(x337-x338);
xdot(339) =a_CMP_GMP*4*(x330-x339);
xdot(340) =a_CMP_GMP*4*(x339-x340);
xdot(341) =a_CMP_GMP*4*(x340-x341);
xdot(342) =a_CMP_GMP*4*(x341-x342);
xdot(343) =g_CMP*4*(x330-x343);
xdot(344) =g_CMP*4*(x343-x344);
xdot(345) =g_CMP*4*(x344-x345);
xdot(346) =g_CMP*4*(x345-x346);
xdot(347) =a_HSC_CMP*4*x26+2*b_CMP*4*x334-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x347;
xdot(348) =+b_CMP*4*(x347-x348);
xdot(349) =+b_CMP*4*(x348-x349);
xdot(350) =+b_CMP*4*(x349-x350);
xdot(351) =+b_CMP*4*(x350-x351);
xdot(352) =a_CMP_MEP*4*(x347-x352);
xdot(353) =a_CMP_MEP*4*(x352-x353);
xdot(354) =a_CMP_MEP*4*(x353-x354);
xdot(355) =a_CMP_MEP*4*(x354-x355);
xdot(356) =a_CMP_GMP*4*(x347-x356);
xdot(357) =a_CMP_GMP*4*(x356-x357);
xdot(358) =a_CMP_GMP*4*(x357-x358);
xdot(359) =a_CMP_GMP*4*(x358-x359);
xdot(360) =g_CMP*4*(x347-x360);
xdot(361) =g_CMP*4*(x360-x361);
xdot(362) =g_CMP*4*(x361-x362);
xdot(363) =g_CMP*4*(x362-x363);
xdot(364) =a_HSC_CMP*4*x43+2*b_CMP*4*x351-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x364;
xdot(365) =+b_CMP*4*(x364-x365);
xdot(366) =+b_CMP*4*(x365-x366);
xdot(367) =+b_CMP*4*(x366-x367);
xdot(368) =+b_CMP*4*(x367-x368);
xdot(369) =a_CMP_MEP*4*(x364-x369);
xdot(370) =a_CMP_MEP*4*(x369-x370);
xdot(371) =a_CMP_MEP*4*(x370-x371);
xdot(372) =a_CMP_MEP*4*(x371-x372);
xdot(373) =a_CMP_GMP*4*(x364-x373);
xdot(374) =a_CMP_GMP*4*(x373-x374);
xdot(375) =a_CMP_GMP*4*(x374-x375);
xdot(376) =a_CMP_GMP*4*(x375-x376);
xdot(377) =g_CMP*4*(x364-x377);
xdot(378) =g_CMP*4*(x377-x378);
xdot(379) =g_CMP*4*(x378-x379);
xdot(380) =g_CMP*4*(x379-x380);
xdot(381) =a_HSC_CMP*4*x60+2*b_CMP*4*x368-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x381;
xdot(382) =+b_CMP*4*(x381-x382);
xdot(383) =+b_CMP*4*(x382-x383);
xdot(384) =+b_CMP*4*(x383-x384);
xdot(385) =+b_CMP*4*(x384-x385);
xdot(386) =a_CMP_MEP*4*(x381-x386);
xdot(387) =a_CMP_MEP*4*(x386-x387);
xdot(388) =a_CMP_MEP*4*(x387-x388);
xdot(389) =a_CMP_MEP*4*(x388-x389);
xdot(390) =a_CMP_GMP*4*(x381-x390);
xdot(391) =a_CMP_GMP*4*(x390-x391);
xdot(392) =a_CMP_GMP*4*(x391-x392);
xdot(393) =a_CMP_GMP*4*(x392-x393);
xdot(394) =g_CMP*4*(x381-x394);
xdot(395) =g_CMP*4*(x394-x395);
xdot(396) =g_CMP*4*(x395-x396);
xdot(397) =g_CMP*4*(x396-x397);
xdot(398) =a_HSC_CMP*4*x77+2*b_CMP*4*x385-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x398;
xdot(399) =+b_CMP*4*(x398-x399);
xdot(400) =+b_CMP*4*(x399-x400);
xdot(401) =+b_CMP*4*(x400-x401);
xdot(402) =+b_CMP*4*(x401-x402);
xdot(403) =a_CMP_MEP*4*(x398-x403);
xdot(404) =a_CMP_MEP*4*(x403-x404);
xdot(405) =a_CMP_MEP*4*(x404-x405);
xdot(406) =a_CMP_MEP*4*(x405-x406);
xdot(407) =a_CMP_GMP*4*(x398-x407);
xdot(408) =a_CMP_GMP*4*(x407-x408);
xdot(409) =a_CMP_GMP*4*(x408-x409);
xdot(410) =a_CMP_GMP*4*(x409-x410);
xdot(411) =g_CMP*4*(x398-x411);
xdot(412) =g_CMP*4*(x411-x412);
xdot(413) =g_CMP*4*(x412-x413);
xdot(414) =g_CMP*4*(x413-x414);
xdot(415) =a_HSC_CMP*4*x94+2*b_CMP*4*x402-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x415;
xdot(416) =+b_CMP*4*(x415-x416);
xdot(417) =+b_CMP*4*(x416-x417);
xdot(418) =+b_CMP*4*(x417-x418);
xdot(419) =+b_CMP*4*(x418-x419);
xdot(420) =a_CMP_MEP*4*(x415-x420);
xdot(421) =a_CMP_MEP*4*(x420-x421);
xdot(422) =a_CMP_MEP*4*(x421-x422);
xdot(423) =a_CMP_MEP*4*(x422-x423);
xdot(424) =a_CMP_GMP*4*(x415-x424);
xdot(425) =a_CMP_GMP*4*(x424-x425);
xdot(426) =a_CMP_GMP*4*(x425-x426);
xdot(427) =a_CMP_GMP*4*(x426-x427);
xdot(428) =g_CMP*4*(x415-x428);
xdot(429) =g_CMP*4*(x428-x429);
xdot(430) =g_CMP*4*(x429-x430);
xdot(431) =g_CMP*4*(x430-x431);
xdot(432) =a_HSC_CMP*4*x111+2*b_CMP*4*x419+2*b_CMP*4*x436-(b_CMP*4+a_CMP_MEP*4+a_CMP_GMP*4+g_CMP*4)*x432;
xdot(433) =+b_CMP*4*(x432-x433);
xdot(434) =+b_CMP*4*(x433-x434);
xdot(435) =+b_CMP*4*(x434-x435);
xdot(436) =+b_CMP*4*(x435-x436);
xdot(437) =a_CMP_MEP*4*(x432-x437);
xdot(438) =a_CMP_MEP*4*(x437-x438);
xdot(439) =a_CMP_MEP*4*(x438-x439);
xdot(440) =a_CMP_MEP*4*(x439-x440);
xdot(441) =a_CMP_GMP*4*(x432-x441);
xdot(442) =a_CMP_GMP*4*(x441-x442);
xdot(443) =a_CMP_GMP*4*(x442-x443);
xdot(444) =a_CMP_GMP*4*(x443-x444);
xdot(445) =g_CMP*4*(x432-x445);
xdot(446) =g_CMP*4*(x445-x446);
xdot(447) =g_CMP*4*(x446-x447);
xdot(448) =g_CMP*4*(x447-x448);

%GMP
xdot(449) =a_CMP_GMP*4*x342+a_MPP_GMP*4*x128-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x449;
xdot(450) =+b_GMP*4*(x449-x450);
xdot(451) =+b_GMP*4*(x450-x451);
xdot(452) =+b_GMP*4*(x451-x452);
xdot(453) =+b_GMP*4*(x452-x453);
xdot(454) =a_GMP_mat*4*(x449-x454);
xdot(455) =a_GMP_mat*4*(x454-x455);
xdot(456) =a_GMP_mat*4*(x455-x456);
xdot(457) =a_GMP_mat*4*(x456-x457);
xdot(458) =g_GMP*4*(x449-x458);
xdot(459) =g_GMP*4*(x458-x459);
xdot(460) =g_GMP*4*(x459-x460);
xdot(461) =g_GMP*4*(x460-x461);
xdot(462) =a_CMP_GMP*4*x359+a_MPP_GMP*4*x149+2*b_GMP*4*x453-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x462;
xdot(463) =+b_GMP*4*(x462-x463);
xdot(464) =+b_GMP*4*(x463-x464);
xdot(465) =+b_GMP*4*(x464-x465);
xdot(466) =+b_GMP*4*(x465-x466);
xdot(467) =a_GMP_mat*4*(x462-x467);
xdot(468) =a_GMP_mat*4*(x467-x468);
xdot(469) =a_GMP_mat*4*(x468-x469);
xdot(470) =a_GMP_mat*4*(x469-x470);
xdot(471) =g_GMP*4*(x462-x471);
xdot(472) =g_GMP*4*(x471-x472);
xdot(473) =g_GMP*4*(x472-x473);
xdot(474) =g_GMP*4*(x473-x474);
xdot(475) =a_CMP_GMP*4*x376+a_MPP_GMP*4*x170+2*b_GMP*4*x466-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x475;
xdot(476) =+b_GMP*4*(x475-x476);
xdot(477) =+b_GMP*4*(x476-x477);
xdot(478) =+b_GMP*4*(x477-x478);
xdot(479) =+b_GMP*4*(x478-x479);
xdot(480) =a_GMP_mat*4*(x475-x480);
xdot(481) =a_GMP_mat*4*(x480-x481);
xdot(482) =a_GMP_mat*4*(x481-x482);
xdot(483) =a_GMP_mat*4*(x482-x483);
xdot(484) =g_GMP*4*(x475-x484);
xdot(485) =g_GMP*4*(x484-x485);
xdot(486) =g_GMP*4*(x485-x486);
xdot(487) =g_GMP*4*(x486-x487);
xdot(488) =a_CMP_GMP*4*x393+a_MPP_GMP*4*x191+2*b_GMP*4*x479-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x488;
xdot(489) =+b_GMP*4*(x488-x489);
xdot(490) =+b_GMP*4*(x489-x490);
xdot(491) =+b_GMP*4*(x490-x491);
xdot(492) =+b_GMP*4*(x491-x492);
xdot(493) =a_GMP_mat*4*(x488-x493);
xdot(494) =a_GMP_mat*4*(x493-x494);
xdot(495) =a_GMP_mat*4*(x494-x495);
xdot(496) =a_GMP_mat*4*(x495-x496);
xdot(497) =g_GMP*4*(x488-x497);
xdot(498) =g_GMP*4*(x497-x498);
xdot(499) =g_GMP*4*(x498-x499);
xdot(500) =g_GMP*4*(x499-x500);
xdot(501) =a_CMP_GMP*4*x410+a_MPP_GMP*4*x212+2*b_GMP*4*x492-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x501;
xdot(502) =+b_GMP*4*(x501-x502);
xdot(503) =+b_GMP*4*(x502-x503);
xdot(504) =+b_GMP*4*(x503-x504);
xdot(505) =+b_GMP*4*(x504-x505);
xdot(506) =a_GMP_mat*4*(x501-x506);
xdot(507) =a_GMP_mat*4*(x506-x507);
xdot(508) =a_GMP_mat*4*(x507-x508);
xdot(509) =a_GMP_mat*4*(x508-x509);
xdot(510) =g_GMP*4*(x501-x510);
xdot(511) =g_GMP*4*(x510-x511);
xdot(512) =g_GMP*4*(x511-x512);
xdot(513) =g_GMP*4*(x512-x513);
xdot(514) =a_CMP_GMP*4*x427+a_MPP_GMP*4*x233+2*b_GMP*4*x505-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x514;
xdot(515) =+b_GMP*4*(x514-x515);
xdot(516) =+b_GMP*4*(x515-x516);
xdot(517) =+b_GMP*4*(x516-x517);
xdot(518) =+b_GMP*4*(x517-x518);
xdot(519) =a_GMP_mat*4*(x514-x519);
xdot(520) =a_GMP_mat*4*(x519-x520);
xdot(521) =a_GMP_mat*4*(x520-x521);
xdot(522) =a_GMP_mat*4*(x521-x522);
xdot(523) =g_GMP*4*(x514-x523);
xdot(524) =g_GMP*4*(x523-x524);
xdot(525) =g_GMP*4*(x524-x525);
xdot(526) =g_GMP*4*(x525-x526);
xdot(527) =a_CMP_GMP*4*x444+a_MPP_GMP*4*x254+2*b_GMP*4*x518+2*b_GMP*4*x531-(b_GMP*4+a_GMP_mat*4+g_GMP*4)*x527;
xdot(528) =+b_GMP*4*(x527-x528);
xdot(529) =+b_GMP*4*(x528-x529);
xdot(530) =+b_GMP*4*(x529-x530);
xdot(531) =+b_GMP*4*(x530-x531);
xdot(532) =a_GMP_mat*4*(x527-x532);
xdot(533) =a_GMP_mat*4*(x532-x533);
xdot(534) =a_GMP_mat*4*(x533-x534);
xdot(535) =a_GMP_mat*4*(x534-x535);
xdot(536) =g_GMP*4*(x527-x536);
xdot(537) =g_GMP*4*(x536-x537);
xdot(538) =g_GMP*4*(x537-x538);
xdot(539) =g_GMP*4*(x538-x539);

%MEP
xdot(540) =a_CMP_MEP*4*x338+a_MPP_MEP*4*x136-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x540;
xdot(541) =+b_MEP*4*(x540-x541);
xdot(542) =+b_MEP*4*(x541-x542);
xdot(543) =+b_MEP*4*(x542-x543);
xdot(544) =+b_MEP*4*(x543-x544);
xdot(545) =a_MEP_mat*4*(x540-x545);
xdot(546) =a_MEP_mat*4*(x545-x546);
xdot(547) =a_MEP_mat*4*(x546-x547);
xdot(548) =a_MEP_mat*4*(x547-x548);
xdot(549) =g_MEP*4*(x540-x549);
xdot(550) =g_MEP*4*(x549-x550);
xdot(551) =g_MEP*4*(x550-x551);
xdot(552) =g_MEP*4*(x551-x552);
xdot(553) =a_CMP_MEP*4*x355+a_MPP_MEP*4*x157+2*b_MEP*4*x544-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x553;
xdot(554) =+b_MEP*4*(x553-x554);
xdot(555) =+b_MEP*4*(x554-x555);
xdot(556) =+b_MEP*4*(x555-x556);
xdot(557) =+b_MEP*4*(x556-x557);
xdot(558) =a_MEP_mat*4*(x553-x558);
xdot(559) =a_MEP_mat*4*(x558-x559);
xdot(560) =a_MEP_mat*4*(x559-x560);
xdot(561) =a_MEP_mat*4*(x560-x561);
xdot(562) =g_MEP*4*(x553-x562);
xdot(563) =g_MEP*4*(x562-x563);
xdot(564) =g_MEP*4*(x563-x564);
xdot(565) =g_MEP*4*(x564-x565);
xdot(566) =a_CMP_MEP*4*x372+a_MPP_MEP*4*x178+2*b_MEP*4*x557-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x566;
xdot(567) =+b_MEP*4*(x566-x567);
xdot(568) =+b_MEP*4*(x567-x568);
xdot(569) =+b_MEP*4*(x568-x569);
xdot(570) =+b_MEP*4*(x569-x570);
xdot(571) =a_MEP_mat*4*(x566-x571);
xdot(572) =a_MEP_mat*4*(x571-x572);
xdot(573) =a_MEP_mat*4*(x572-x573);
xdot(574) =a_MEP_mat*4*(x573-x574);
xdot(575) =g_MEP*4*(x566-x575);
xdot(576) =g_MEP*4*(x575-x576);
xdot(577) =g_MEP*4*(x576-x577);
xdot(578) =g_MEP*4*(x577-x578);
xdot(579) =a_CMP_MEP*4*x389+a_MPP_MEP*4*x199+2*b_MEP*4*x570-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x579;
xdot(580) =+b_MEP*4*(x579-x580);
xdot(581) =+b_MEP*4*(x580-x581);
xdot(582) =+b_MEP*4*(x581-x582);
xdot(583) =+b_MEP*4*(x582-x583);
xdot(584) =a_MEP_mat*4*(x579-x584);
xdot(585) =a_MEP_mat*4*(x584-x585);
xdot(586) =a_MEP_mat*4*(x585-x586);
xdot(587) =a_MEP_mat*4*(x586-x587);
xdot(588) =g_MEP*4*(x579-x588);
xdot(589) =g_MEP*4*(x588-x589);
xdot(590) =g_MEP*4*(x589-x590);
xdot(591) =g_MEP*4*(x590-x591);
xdot(592) =a_CMP_MEP*4*x406+a_MPP_MEP*4*x220+2*b_MEP*4*x583-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x592;
xdot(593) =+b_MEP*4*(x592-x593);
xdot(594) =+b_MEP*4*(x593-x594);
xdot(595) =+b_MEP*4*(x594-x595);
xdot(596) =+b_MEP*4*(x595-x596);
xdot(597) =a_MEP_mat*4*(x592-x597);
xdot(598) =a_MEP_mat*4*(x597-x598);
xdot(599) =a_MEP_mat*4*(x598-x599);
xdot(600) =a_MEP_mat*4*(x599-x600);
xdot(601) =g_MEP*4*(x592-x601);
xdot(602) =g_MEP*4*(x601-x602);
xdot(603) =g_MEP*4*(x602-x603);
xdot(604) =g_MEP*4*(x603-x604);
xdot(605) =a_CMP_MEP*4*x423+a_MPP_MEP*4*x241+2*b_MEP*4*x596-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x605;
xdot(606) =+b_MEP*4*(x605-x606);
xdot(607) =+b_MEP*4*(x606-x607);
xdot(608) =+b_MEP*4*(x607-x608);
xdot(609) =+b_MEP*4*(x608-x609);
xdot(610) =a_MEP_mat*4*(x605-x610);
xdot(611) =a_MEP_mat*4*(x610-x611);
xdot(612) =a_MEP_mat*4*(x611-x612);
xdot(613) =a_MEP_mat*4*(x612-x613);
xdot(614) =g_MEP*4*(x605-x614);
xdot(615) =g_MEP*4*(x614-x615);
xdot(616) =g_MEP*4*(x615-x616);
xdot(617) =g_MEP*4*(x616-x617);
xdot(618) =a_CMP_MEP*4*x440+a_MPP_MEP*4*x262+2*b_MEP*4*x609+2*b_MEP*4*x622-(b_MEP*4+a_MEP_mat*4+g_MEP*4)*x618;
xdot(619) =+b_MEP*4*(x618-x619);
xdot(620) =+b_MEP*4*(x619-x620);
xdot(621) =+b_MEP*4*(x620-x621);
xdot(622) =+b_MEP*4*(x621-x622);
xdot(623) =a_MEP_mat*4*(x618-x623);
xdot(624) =a_MEP_mat*4*(x623-x624);
xdot(625) =a_MEP_mat*4*(x624-x625);
xdot(626) =a_MEP_mat*4*(x625-x626);
xdot(627) =g_MEP*4*(x618-x627);
xdot(628) =g_MEP*4*(x627-x628);
xdot(629) =g_MEP*4*(x628-x629);
xdot(630) =g_MEP*4*(x629-x630);

%mat
xdot(631) =a_MEP_mat*4*x548+a_GMP_mat*4*x457-(b_mat*4+g_mat*4)*x631;
xdot(632) =+b_mat*4*(x631-x632);
xdot(633) =+b_mat*4*(x632-x633);
xdot(634) =+b_mat*4*(x633-x634);
xdot(635) =+b_mat*4*(x634-x635);
xdot(636) =g_mat*4*(x631-x636);
xdot(637) =g_mat*4*(x636-x637);
xdot(638) =g_mat*4*(x637-x638);
xdot(639) =g_mat*4*(x638-x639);
xdot(640) =a_MEP_mat*4*x561+a_GMP_mat*4*x470+2*b_mat*4*x635-(b_mat*4+g_mat*4)*x640;
xdot(641) =+b_mat*4*(x640-x641);
xdot(642) =+b_mat*4*(x641-x642);
xdot(643) =+b_mat*4*(x642-x643);
xdot(644) =+b_mat*4*(x643-x644);
xdot(645) =g_mat*4*(x640-x645);
xdot(646) =g_mat*4*(x645-x646);
xdot(647) =g_mat*4*(x646-x647);
xdot(648) =g_mat*4*(x647-x648);
xdot(649) =a_MEP_mat*4*x574+a_GMP_mat*4*x483+2*b_mat*4*x644-(b_mat*4+g_mat*4)*x649;
xdot(650) =+b_mat*4*(x649-x650);
xdot(651) =+b_mat*4*(x650-x651);
xdot(652) =+b_mat*4*(x651-x652);
xdot(653) =+b_mat*4*(x652-x653);
xdot(654) =g_mat*4*(x649-x654);
xdot(655) =g_mat*4*(x654-x655);
xdot(656) =g_mat*4*(x655-x656);
xdot(657) =g_mat*4*(x656-x657);
xdot(658) =a_MEP_mat*4*x587+a_GMP_mat*4*x496+2*b_mat*4*x653-(b_mat*4+g_mat*4)*x658;
xdot(659) =+b_mat*4*(x658-x659);
xdot(660) =+b_mat*4*(x659-x660);
xdot(661) =+b_mat*4*(x660-x661);
xdot(662) =+b_mat*4*(x661-x662);
xdot(663) =g_mat*4*(x658-x663);
xdot(664) =g_mat*4*(x663-x664);
xdot(665) =g_mat*4*(x664-x665);
xdot(666) =g_mat*4*(x665-x666);
xdot(667) =a_MEP_mat*4*x600+a_GMP_mat*4*x509+2*b_mat*4*x662-(b_mat*4+g_mat*4)*x667;
xdot(668) =+b_mat*4*(x667-x668);
xdot(669) =+b_mat*4*(x668-x669);
xdot(670) =+b_mat*4*(x669-x670);
xdot(671) =+b_mat*4*(x670-x671);
xdot(672) =g_mat*4*(x667-x672);
xdot(673) =g_mat*4*(x672-x673);
xdot(674) =g_mat*4*(x673-x674);
xdot(675) =g_mat*4*(x674-x675);
xdot(676) =a_MEP_mat*4*x613+a_GMP_mat*4*x522+2*b_mat*4*x671-(b_mat*4+g_mat*4)*x676;
xdot(677) =+b_mat*4*(x676-x677);
xdot(678) =+b_mat*4*(x677-x678);
xdot(679) =+b_mat*4*(x678-x679);
xdot(680) =+b_mat*4*(x679-x680);
xdot(681) =g_mat*4*(x676-x681);
xdot(682) =g_mat*4*(x681-x682);
xdot(683) =g_mat*4*(x682-x683);
xdot(684) =g_mat*4*(x683-x684);
xdot(685) =a_MEP_mat*4*x626+a_GMP_mat*4*x535+2*b_mat*4*x680+2*b_mat*4*x689-(b_mat*4+g_mat*4)*x685;
xdot(686) =+b_mat*4*(x685-x686);
xdot(687) =+b_mat*4*(x686-x687);
xdot(688) =+b_mat*4*(x687-x688);
xdot(689) =+b_mat*4*(x688-x689);
xdot(690) =g_mat*4*(x685-x690);
xdot(691) =g_mat*4*(x690-x691);
xdot(692) =g_mat*4*(x691-x692);
xdot(693) =g_mat*4*(x692-x693);

%D



% INITIAL CONDITIONS
x0 = sym(zeros(size(x)));
x0([1,120,267,330,449,540,631])=exp(p(1:7))-1;

% OBSERVABLES
y= sym(zeros(49,1));
for i=1:7
y(0+i) = log(sum(x((i-1)*17+1:i*17+1-1))+1);
end
for i=1:7
y(7+i) = log(sum(x((i-1)*21+120:i*21+120-1))+1);
end
for i=1:7
y(14+i) = log(sum(x((i-1)*9+267:i*9+267-1))+1);
end
for i=1:7
y(21+i) = log(sum(x((i-1)*17+330:i*17+330-1))+1);
end
for i=1:7
y(28+i) = log(sum(x((i-1)*13+449:i*13+449-1))+1);
end
for i=1:7
y(35+i) = log(sum(x((i-1)*13+540:i*13+540-1))+1);
end
for i=1:7
y(42+i) = log(sum(x((i-1)*9+631:i*9+631-1))+1);
end


% SYSTEM STRUCT
model.sym.x = x;
model.sym.k = k;
model.sym.xdot = xdot;
model.sym.p = p;
model.sym.x0 = x0;
model.sym.y = y;
model.sym.sigma_y = 0;

































































































































































