/* $Id: special.h,v 1.1.1.1 2003/07/21 16:18:42 pturner Exp $
 *
 * special characters
 *
 */

int Special_indices[]={ 
0,23,63,101,127,132,141,155,162,165,184,
203,212,221,259,297,301,305,308,313,316,321,
328,335,340,346,359,364,371,378,382,386,394,
402,423,446,453,459,465,482,490,498,506,514,
522,535,548,561,574,589,598,607,616,625,667,
678,686,717,765,791,821,868,921,960,969,1012,
1037,1083,1092,1128,1166,1190,1216,1244,1268,1294,1334,
1365,1392,1415,1439,1448,1495,1542,1557,1575,1602,1629,
1640,1651,1697,1743,1774,1805,1816,0};

unsigned char Special_table[]={ 
73,90,215,78,85,77,82,77,79,78,77,80,76,83,76,86,
77,89,78,90,81,91,84,91,86,90,210,77,80,78,78,80,
77,83,77,86,78,89,79,90,81,91,205,84,85,84,73,92,
212,70,81,71,79,74,78,76,77,79,76,84,76,88,77,90,
79,91,81,91,84,90,86,87,87,85,88,82,89,77,89,73,
88,71,86,70,84,70,212,70,82,71,80,74,79,76,78,79,
77,84,77,88,78,90,79,91,209,91,83,90,85,87,86,85,
87,82,88,77,88,73,87,71,86,70,206,80,87,80,71,93,
213,70,79,98,214,70,78,98,209,77,77,78,75,80,74,83,
74,86,75,88,77,90,80,91,83,91,87,90,89,88,90,85,
90,82,89,80,87,78,84,77,81,77,209,77,78,78,76,80,
75,83,75,86,76,88,78,90,80,91,211,91,86,90,88,88,
89,85,89,82,88,80,86,78,84,77,73,91,212,77,86,78,
88,80,88,79,87,78,84,77,81,77,78,78,77,79,76,81,
76,83,77,85,79,87,83,90,209,77,79,78,78,79,77,81,
77,83,78,85,83,90,84,92,84,94,83,95,81,95,78,86,
210,70,81,77,211,70,81,77,74,90,206,70,77,77,207,70,
77,77,214,70,85,77,215,70,85,77,75,89,209,70,79,71,
78,73,78,75,79,77,81,78,83,78,85,77,86,75,86,73,
85,71,83,70,81,70,74,90,210,70,82,82,205,73,87,79,
215,73,77,79,71,93,219,66,73,98,75,89,214,66,84,68,
82,71,80,75,79,80,79,84,80,89,82,93,84,96,86,98,
212,68,82,72,81,75,80,80,80,84,81,89,82,92,84,96,
75,89,206,66,80,68,82,71,84,75,85,80,85,84,84,89,
82,93,80,96,78,98,208,68,82,72,83,75,84,80,84,84,
83,89,82,92,80,96,75,89,207,66,79,98,208,66,80,98,
207,66,86,66,207,98,86,98,75,89,212,66,84,98,213,66,
85,98,206,66,85,66,206,98,85,98,75,89,212,66,82,67,
81,68,80,70,80,72,81,74,82,75,83,77,83,79,81,81,
210,67,81,69,81,71,82,73,83,74,84,76,84,78,83,80,
79,82,83,84,84,86,84,88,83,90,82,91,81,93,81,95,
82,97,209,83,83,85,83,87,82,89,81,90,80,92,80,94,
81,96,82,97,84,98,75,89,208,66,82,67,83,68,84,70,
84,72,83,74,82,75,81,77,81,79,83,81,210,67,83,69,
83,71,82,73,81,74,80,76,80,78,81,80,85,82,81,84,
80,86,80,88,81,90,82,91,83,93,83,95,82,97,211,83,
81,85,81,87,82,89,83,90,84,92,84,94,83,96,82,97,
80,98,75,89,213,66,78,82,85,98,75,89,207,66,86,82,
79,98,78,86,210,66,82,98,75,89,207,66,79,98,213,66,
85,98,69,95,201,82,91,82,69,95,210,73,82,91,201,82,
91,82,70,94,210,74,82,91,202,82,90,82,202,91,90,91,
70,94,210,74,82,91,202,74,90,74,202,82,90,82,71,93,
203,75,89,89,217,75,75,89,77,87,210,81,81,82,82,83,
83,82,82,81,69,95,210,73,81,74,82,75,83,74,82,73,
201,82,91,82,210,89,81,90,82,91,83,90,82,89,69,95,
201,79,91,79,201,85,91,85,69,95,217,73,75,91,201,79,
91,79,201,85,91,85,69,95,201,77,91,77,201,82,91,82,
201,87,91,87,70,94,218,73,74,82,90,91,70,94,202,73,
90,82,74,91,70,94,218,70,74,77,90,84,202,86,90,86,
202,91,90,91,70,94,202,70,90,77,74,84,202,86,90,86,
202,91,90,91,70,95,219,87,89,87,87,86,85,84,82,80,
81,79,79,78,77,78,75,79,74,81,74,83,75,85,77,86,
79,86,81,85,82,84,85,80,87,78,89,77,91,77,70,94,
201,85,73,83,74,80,76,79,78,79,80,80,84,83,86,84,
88,84,90,83,91,81,201,83,74,81,76,80,78,80,80,81,
84,84,86,85,88,85,90,84,91,81,91,79,71,93,202,84,
82,79,90,84,202,84,82,80,90,84,76,88,212,70,79,76,
212,70,85,71,79,76,76,88,208,70,85,76,208,70,79,71,
85,76,72,92,203,70,76,72,78,74,81,75,83,75,86,74,
88,72,89,70,203,70,76,73,78,75,81,76,83,76,86,75,
88,73,89,70,77,87,210,72,81,71,82,70,83,71,83,73,
82,75,81,76,77,87,211,70,82,71,81,73,81,75,82,76,
83,75,82,74,77,87,210,72,83,71,82,70,81,71,81,73,
82,75,83,76,77,87,209,70,82,71,83,73,83,75,82,76,
81,75,82,74,69,91,200,77,76,77,82,89,203,77,82,91,
219,66,82,91,70,94,218,74,83,74,79,75,77,76,75,78,
74,81,74,83,75,86,77,88,79,89,83,90,90,90,70,94,
202,74,74,81,75,85,76,87,78,89,81,90,83,90,86,89,
88,87,89,85,90,81,90,74,70,94,202,74,81,74,85,75,
87,76,89,78,90,81,90,83,89,86,87,88,85,89,81,90,
74,90,70,94,202,90,74,83,75,79,76,77,78,75,81,74,
83,74,86,75,88,77,89,79,90,83,90,90,70,94,218,74,
83,74,79,75,77,76,75,78,74,81,74,83,75,86,77,88,
79,89,83,90,90,90,202,82,86,82,69,95,216,80,91,82,
88,84,213,77,90,82,85,87,201,82,90,82,74,90,208,76,
82,73,84,76,205,79,82,74,87,79,210,74,82,91,69,95,
204,80,73,82,76,84,207,77,74,82,79,87,202,82,91,82,
74,90,208,88,82,91,84,88,205,85,82,90,87,85,210,73,
82,90,73,92,216,82,87,79,86,78,84,77,82,77,79,78,
77,81,76,84,76,87,77,89,78,90,80,91,82,91,85,90,
87,88,88,85,89,80,89,75,88,72,87,71,85,70,82,70,
80,71,79,72,79,73,80,73,80,72,210,77,80,78,78,81,
77,84,77,88,78,90,210,91,84,90,86,88,87,85,88,80,
88,75,87,72,85,70,72,92,202,70,82,91,203,70,82,89,
218,70,82,91,202,70,90,70,203,71,89,71,65,98,196,77,
73,77,82,89,200,78,82,91,226,58,82,91,70,94,219,67,
90,68,91,69,92,68,92,67,91,66,89,66,87,67,85,69,
84,71,83,74,82,78,80,90,79,94,78,96,214,68,85,70,
84,74,82,86,81,90,80,93,79,95,77,97,75,98,73,98,
72,97,72,96,73,95,74,96,73,97,70,94,219,67,90,68,
91,69,92,68,92,67,91,66,89,66,87,67,85,69,84,71,
83,74,82,78,80,90,79,94,78,96,214,68,85,70,84,74,
82,86,81,90,80,93,79,95,77,97,75,98,73,98,72,97,
72,96,73,95,74,96,73,97,209,75,78,76,76,78,75,81,
75,83,76,86,78,88,81,89,83,89,86,88,88,86,89,83,
89,81,88,78,86,76,83,75,81,75,70,95,220,83,91,85,
89,86,87,86,85,85,84,84,81,80,80,79,78,78,76,78,
74,79,73,81,73,83,74,85,76,86,78,86,80,85,81,84,
84,80,85,79,87,78,89,78,91,79,92,81,92,83,70,94,
219,70,73,91,206,70,80,72,80,74,79,76,77,77,75,77,
73,75,73,73,74,71,76,70,78,70,80,71,83,72,86,72,
89,71,91,70,215,84,85,85,84,87,84,89,86,91,88,91,
90,90,91,88,91,86,89,84,87,84,70,95,219,78,90,79,
91,80,92,79,92,78,91,77,90,77,89,78,88,80,86,85,
84,88,82,90,80,91,77,91,74,90,73,88,73,85,74,83,
80,79,82,77,83,75,83,73,82,71,80,70,78,71,77,73,
77,75,78,78,80,81,85,88,87,90,90,91,91,91,92,90,
92,89,205,91,75,90,74,88,74,85,75,83,77,81,205,75,
78,77,86,88,88,90,90,91,69,96,215,78,86,76,84,75,
81,75,79,76,78,77,77,80,77,83,78,85,80,86,83,86,
85,85,86,83,209,75,79,77,78,80,78,83,79,85,80,86,
215,75,86,83,86,85,88,86,90,86,92,84,93,81,93,79,
92,76,91,74,89,72,87,71,84,70,81,70,78,71,76,72,
74,74,73,76,72,79,72,82,73,85,74,87,76,89,78,90,
81,91,84,91,87,90,89,89,90,88,216,75,87,83,87,85,
88,86,72,92,208,66,80,95,212,66,84,95,216,73,87,74,
88,75,89,74,89,73,87,71,84,70,80,70,77,71,75,73,
75,75,76,77,77,78,79,79,85,81,87,82,89,84,203,75,
77,77,79,78,85,80,87,81,88,82,89,84,89,88,87,90,
84,91,80,91,77,90,75,88,75,87,76,86,77,87,76,88,
72,93,211,70,76,98,217,70,82,98,204,81,90,81,203,87,
89,87,74,90,213,73,84,74,85,75,86,74,86,73,85,71,
83,70,81,70,79,71,78,73,78,75,79,77,81,79,86,82,
207,77,84,80,86,82,87,84,87,86,86,88,84,90,208,78,
78,80,77,82,77,84,78,86,80,88,85,91,206,86,83,89,
85,91,86,93,86,95,85,97,83,98,81,98,79,97,78,95,
78,94,79,93,80,94,79,95,74,90,210,70,81,72,82,74,
83,72,82,70,210,70,82,98,210,81,81,84,82,98,83,84,
82,81,204,77,78,78,80,77,78,76,76,77,204,77,88,77,
212,77,86,78,88,77,86,76,84,77,74,90,210,70,81,72,
82,74,83,72,82,70,210,70,82,84,210,80,81,82,83,86,
82,88,81,86,83,82,82,80,210,84,82,98,210,94,81,96,
82,98,83,96,82,94,204,77,78,78,80,77,78,76,76,77,
204,77,88,77,212,77,86,78,88,77,86,76,84,77,204,91,
78,92,80,91,78,90,76,91,204,91,88,91,212,91,86,92,
88,91,86,90,84,91,73,92,216,70,88,91,203,70,88,70,
208,80,88,80,203,91,88,91,69,96,209,70,78,71,75,73,
73,76,72,79,72,82,73,85,75,88,78,90,81,91,84,91,
87,90,90,88,92,85,93,82,93,79,92,76,90,73,87,71,
84,70,81,70,210,79,81,80,81,81,82,82,83,82,84,81,
84,80,83,79,82,79,210,80,82,81,83,81,83,80,82,80,
74,91,208,70,78,71,79,73,81,74,208,70,79,71,79,73,
213,70,87,71,86,73,84,74,213,70,86,71,86,73,209,74,
79,75,78,76,77,78,77,81,78,83,79,84,81,85,84,85,
86,84,87,83,88,81,88,78,87,76,86,75,84,74,81,74,
210,85,82,91,211,85,83,91,206,88,87,88,73,92,210,70,
79,71,77,73,76,76,76,77,77,80,79,82,82,83,83,83,
86,82,88,80,89,77,89,76,88,73,86,71,83,70,82,70,
210,83,82,91,211,83,83,91,206,87,87,87,68,96,208,70,
77,71,74,73,72,76,71,79,71,83,72,86,74,89,77,91,
80,92,84,92,87,91,90,89,92,86,93,83,93,79,92,76,
90,73,87,71,84,70,80,70,210,70,82,92,199,81,93,81,
71,96,208,77,77,78,75,80,74,83,74,84,75,87,77,89,
80,90,81,90,84,89,86,87,87,84,87,83,86,80,84,78,
81,77,80,77,221,71,87,71,91,72,85,78,221,71,93,77,
92,73,86,79,220,72,86,78,70,92,201,73,74,71,76,70,
79,70,81,71,82,73,82,76,81,79,80,81,78,83,75,85,
207,70,80,71,81,73,81,77,80,80,78,83,214,70,84,91,
215,70,83,91,203,85,89,85,73,92,205,70,77,85,206,70,
77,81,205,81,78,79,79,78,81,77,84,77,87,78,88,80,
88,82,87,84,85,86,212,77,86,78,87,80,87,82,84,88,
84,90,85,91,87,91,89,89,203,70,78,70,73,92,210,78,
79,79,77,81,76,84,76,85,77,88,79,90,82,91,83,91,
86,90,88,88,89,85,89,84,88,81,86,79,83,78,82,78,
210,72,78,74,82,70,82,78,211,72,87,74,83,70,83,78,
210,83,81,84,81,85,82,86,83,86,84,85,84,84,83,83,
82,83,210,84,82,85,83,85,83,84,82,84,71,94,209,72,
82,70,82,91,212,72,83,70,83,91,202,72,75,70,75,77,
76,80,78,82,81,83,82,83,205,72,76,70,76,78,77,81,
219,72,90,70,90,77,89,80,87,82,84,83,83,83,216,72,
89,70,89,78,88,81,206,87,87,87,71,93,204,70,76,91,
205,70,77,91,201,70,85,70,88,71,89,72,90,74,90,77,
89,79,88,80,85,81,77,81,213,70,87,71,88,72,89,74,
89,77,88,79,87,80,85,81,201,91,89,91,89,86,88,91,
72,91,217,71,85,71,81,72,78,74,76,77,75,80,75,83,
76,86,78,89,81,91,85,92,89,92,217,71,86,72,83,74,
81,77,80,80,80,83,81,86,83,89,86,91,89,92,70,95,
207,81,77,81,75,82,74,83,73,85,73,87,74,89,75,90,
77,91,79,91,81,90,82,89,83,87,83,85,82,83,81,82,
79,81,211,72,80,81,218,74,82,82,220,81,83,84,72,92,
207,75,85,89,213,75,79,89,203,79,89,85,217,79,75,85,
70,94,206,86,76,85,75,85,73,86,72,88,72,89,73,91,
75,92,76,92,78,91,79,89,79,88,78,86,75,82,74,79,
74,77,75,74,77,72,80,71,84,71,87,72,89,74,90,77,
90,79,89,82,86,86,85,88,85,89,86,91,88,92,89,92,
91,91,92,89,92,88,91,86,89,85,88,85,86,86,202,77,
75,75,77,73,80,72,84,72,87,73,89,75,90,77,70,94,
206,77,76,78,75,78,73,77,72,75,72,74,73,72,75,71,
76,71,78,72,79,74,79,75,78,77,75,81,74,84,74,86,
75,89,77,91,80,92,84,92,87,91,89,89,90,86,90,84,
89,81,86,77,85,75,85,74,86,72,88,71,89,71,91,72,
92,74,92,75,91,77,89,78,88,78,86,77,202,86,75,88,
77,90,80,91,84,91,87,90,89,88,90,86,65,99,200,66,
72,98,201,66,73,98,219,66,91,98,220,66,92,98,196,66,
96,66,196,98,77,98,215,98,96,98,66,97,199,66,81,80,
70,98,198,66,80,80,197,66,80,81,197,66,92,66,94,73,
91,66,199,97,92,97,198,98,92,98,94,91,91,98,73,91,
216,43,85,49,82,56,80,61,79,65,78,70,77,78,77,86,
78,94,79,99,80,103,82,108,85,115,88,121,213,49,83,54,
81,60,80,64,79,70,78,78,78,86,79,94,80,100,81,104,
83,110,85,115,73,91,204,43,79,49,82,56,84,61,85,65,
86,70,87,78,87,86,86,94,85,99,84,103,82,108,79,115,
76,121,207,49,81,54,83,60,84,64,85,70,86,78,86,86,
85,94,84,100,83,104,81,110,79,115,73,91,205,43,77,82,
77,121,206,43,78,82,78,121,205,43,88,43,205,121,88,121,
73,91,214,43,86,82,86,121,215,43,87,82,87,121,204,43,
87,43,204,121,87,121,73,91,214,43,83,45,81,47,80,49,
79,52,79,56,80,60,84,68,85,71,85,74,84,77,82,80,
211,45,81,48,80,52,80,56,81,59,85,67,86,71,86,74,
85,77,82,80,78,82,82,84,85,87,86,90,86,93,85,97,
81,105,80,108,80,112,81,116,83,119,210,84,84,87,85,90,
85,93,84,96,80,104,79,108,79,112,80,115,81,117,83,119,
86,121,73,91,206,43,81,45,83,47,84,49,85,52,85,56,
84,60,80,68,79,71,79,74,80,77,82,80,209,45,83,48,
84,52,84,56,83,59,79,67,78,71,78,74,79,77,82,80,
86,82,82,84,79,87,78,90,78,93,79,97,83,105,84,108,
84,112,83,116,81,119,210,84,80,87,79,90,79,93,80,96,
84,104,85,108,85,112,84,115,83,117,81,119,78,121,73,91,
214,46,83,49,81,52,79,56,78,61,78,67,79,73,80,77,
83,88,84,92,85,98,85,103,84,108,83,111,81,115,211,49,
81,53,80,56,79,61,79,66,80,72,81,76,84,87,85,91,
86,97,86,103,85,108,83,112,81,115,78,118,73,91,206,46,
81,49,83,52,85,56,86,61,86,67,85,73,84,77,81,88,
80,92,79,98,79,103,80,108,81,111,83,115,209,49,83,53,
84,56,85,61,85,66,84,72,83,76,80,87,79,91,78,97,
78,103,79,108,81,112,83,115,86,118,55,90,186,82,65,82,
82,111,192,82,81,111,191,82,82,114,218,34,86,74,82,114,
67,97,221,46,92,46,91,47,91,48,92,49,93,49,94,48,
94,46,93,44,91,43,89,43,87,44,85,46,84,48,83,51,
82,58,81,74,81,106,80,115,79,118,220,47,92,48,93,48,
93,47,92,47,210,58,82,106,213,46,84,49,83,58,83,90,
82,106,81,113,80,116,79,118,77,120,75,121,73,121,71,120,
70,118,70,116,71,115,72,115,73,116,73,117,72,118,71,118,
199,116,71,117,72,117,72,116,71,116,0};
