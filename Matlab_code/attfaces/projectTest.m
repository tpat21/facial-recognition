a1 = loadface(1,1);
a2 = loadface(2,1);
a3 = loadface(3,1);
a4 = loadface(4,1);
a5 = loadface(5,1);
a6 = loadface(6,1);
a7 = loadface(7,1);
a8 = loadface(8,1);
a9 = loadface(9,1);
a10 = loadface(10,1);

b1 = loadface(11,2);
b2 = loadface(12,2);
b3 = loadface(13,2);
b4 = loadface(14,2);
b5 = loadface(15,2);
b6 = loadface(16,2);
b7 = loadface(17,2);
b8 = loadface(18,2);
b9 = loadface(19,2);
b10 = loadface(20,2);

c1 = loadface(21,1);
c2 = loadface(22,1);
c3 = loadface(23,1);
c4 = loadface(24,1);
c5 = loadface(25,1);
c6 = loadface(26,1);
c7 = loadface(27,1);
c8 = loadface(28,1);
c9 = loadface(29,1);
c10 = loadface(30,1);

d1 = loadface(31,2);
d2 = loadface(32,2);
d3 = loadface(33,2);
d4 = loadface(34,2);
d5 = loadface(35,2);
d6 = loadface(36,2);
d7 = loadface(37,2);
d8 = loadface(38,2);
d9 = loadface(39,2);
d10 = loadface(40,2);

%x1 = loadface(10,6);

A = [a1 a2 a3 a4 a5 a7 a8 a9 a10 b1 b2 b3 b4 b5 b7 b8 b9 b10];
subj = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];

z1 = [a3];
z2 = [a1];
z3 = [b7];
z4 = [a4];
z5 = [b10];

z6 = [c8];
z7 = [c1];
z8 = [c4];
z9 = [c10];
z10 = [d6];


[s,conf] = identiface(A,subj,z1)
[s,conf] = identiface(A,subj,z2)
[s,conf] = identiface(A,subj,z3)
[s,conf] = identiface(A,subj,z4)
[s,conf] = identiface(A,subj,z5)
[s,conf] = identiface(A,subj,z6)
[s,conf] = identiface(A,subj,z7)
[s,conf] = identiface(A,subj,z8)
[s,conf] = identiface(A,subj,z9)
[s,conf] = identiface(A,subj,z10)
