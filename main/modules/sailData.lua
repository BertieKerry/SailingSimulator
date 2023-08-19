local M = {}
-- {BoatAngle, Force, SailAngle}
-- BoatAngle = 0-180
-- Force = 0-1
-- SailAngle = 0-90

M.data = { { 0, 0, 0 }, { 1, 0, 0 }, { 2, 0, 0 }, { 3, 0, 0 }, { 4, 0, 0 }, { 5, 0, 0 }, { 6, 0, 0 }, { 7, 0, 0 }, { 8, 0, 0 },
{ 9, 0, 0 }, { 10, 0, 0 }, { 11, 0, 0 }, { 12, 0, 0 }, { 13, 0, 0 }, { 14, 0, 0 }, { 15, 0, 0 }, { 16, 0, 0 },
{ 17, 0, 0 }, { 18, 0, 0 }, { 19, 0, 0 }, { 20, 0, 0 }, { 21, 0, 0 }, { 22, 0, 0 }, { 23, 0, 0 }, { 24, 0, 0 },
{ 25, 0, 0 }, { 26, 0, 0 }, { 27, 0, 0 }, { 28, 0, 0 }, { 29, 0, 0 }, { 30, 0, 0 }, { 31, 0, 0 }, { 32, 0, 0 },
{ 33, 0, 0 }, { 34, 0, 0 }, { 35, 0, 0 }, { 36, 0, 0 }, { 37, 0, 0 }, { 38, 0, 0 }, { 39, 0, 0 }, { 40, 0, 0 },
{ 41, 0, 0 }, { 42, 0, 0 }, { 43, 0, 0 }, { 44, 0, 0 }, { 45, 0, 0 }, { 46, 0, 0 }, { 47, 0.714, 0.7 }, { 48, 0.721, 1.3 },
{ 49, 0.727, 2.0 }, { 50, 0.734, 2.7 }, { 51, 0.74, 3.4 }, { 52, 0.747, 4.0 }, { 53, 0.753, 4.7 }, { 54, 0.76, 5.4 },
{ 55, 0.766, 6.0 }, { 56, 0.773, 6.7 }, { 57, 0.779, 7.4 }, { 58, 0.786, 8.1 }, { 59, 0.792, 8.7 }, { 60, 0.799, 9.4 },
{ 61, 0.805, 10.1 }, { 62, 0.812, 10.7 }, { 63, 0.818, 11.4 }, { 64, 0.825, 12.1 }, { 65, 0.831, 12.7 },
{ 66, 0.838, 13.4 }, { 67, 0.844, 14.1 }, { 68, 0.851, 14.8 }, { 69, 0.857, 15.4 }, { 70, 0.864, 16.1 },
{ 71, 0.87, 16.8 }, { 72, 0.877, 17.4 }, { 73, 0.883, 18.1 }, { 74, 0.89, 18.8 }, { 75, 0.896, 19.5 },
{ 76, 0.903, 20.1 }, { 77, 0.909, 20.8 }, { 78, 0.916, 21.5 }, { 79, 0.922, 22.1 }, { 80, 0.929, 22.8 },
{ 81, 0.935, 23.5 }, { 82, 0.942, 24.2 }, { 83, 0.948, 24.8 }, { 84, 0.955, 25.5 }, { 85, 0.961, 26.2 },
{ 86, 0.968, 26.8 }, { 87, 0.974, 27.5 }, { 88, 0.981, 28.2 }, { 89, 0.987, 28.9 }, { 90, 0.994, 29.5 },
{ 91, 1.0, 30.2 }, { 92, 0.995, 30.9 }, { 93, 0.99, 31.5 }, { 94, 0.985, 32.2 }, { 95, 0.98, 32.9 },
{ 96, 0.975, 33.5 }, { 97, 0.97, 34.2 }, { 98, 0.965, 34.9 }, { 99, 0.96, 35.6 }, { 100, 0.955, 36.2 },
{ 101, 0.95, 36.9 }, { 102, 0.945, 37.6 }, { 103, 0.94, 38.2 }, { 104, 0.935, 38.9 }, { 105, 0.93, 39.6 },
{ 106, 0.925, 40.3 }, { 107, 0.92, 40.9 }, { 108, 0.915, 41.6 }, { 109, 0.91, 42.3 }, { 110, 0.905, 42.9 },
{ 111, 0.9, 43.6 }, { 112, 0.895, 44.3 }, { 113, 0.89, 45.0 }, { 114, 0.885, 45.6 }, { 115, 0.88, 46.3 },
{ 116, 0.875, 47.0 }, { 117, 0.87, 47.6 }, { 118, 0.865, 48.3 }, { 119, 0.86, 49.0 }, { 120, 0.855, 49.7 },
{ 121, 0.85, 50.3 }, { 122, 0.845, 51.0 }, { 123, 0.84, 51.7 }, { 124, 0.835, 52.3 }, { 125, 0.83, 53.0 },
{ 126, 0.825, 53.7 }, { 127, 0.82, 54.4 }, { 128, 0.815, 55.0 }, { 129, 0.81, 55.7 }, { 130, 0.805, 56.4 },
{ 131, 0.8, 57.0 }, { 132, 0.795, 57.7 }, { 133, 0.79, 58.4 }, { 134, 0.785, 59.0 }, { 135, 0.78, 59.7 },
{ 136, 0.775, 60.4 }, { 137, 0.77, 61.1 }, { 138, 0.765, 61.7 }, { 139, 0.76, 62.4 }, { 140, 0.755, 63.1 },
{ 141, 0.75, 63.7 }, { 142, 0.745, 64.4 }, { 143, 0.74, 65.1 }, { 144, 0.735, 65.8 }, { 145, 0.73, 66.4 },
{ 146, 0.725, 67.1 }, { 147, 0.72, 67.8 }, { 148, 0.715, 68.4 }, { 149, 0.71, 69.1 }, { 150, 0.705, 69.8 },
{ 151, 0.7, 70.5 }, { 152, 0.695, 71.1 }, { 153, 0.69, 71.8 }, { 154, 0.685, 72.5 }, { 155, 0.68, 73.1 },
{ 156, 0.675, 73.8 }, { 157, 0.67, 74.5 }, { 158, 0.665, 75.2 }, { 159, 0.66, 75.8 }, { 160, 0.655, 76.5 },
{ 161, 0.65, 77.2 }, { 162, 0.645, 77.8 }, { 163, 0.64, 78.5 }, { 164, 0.635, 79.2 }, { 165, 0.63, 79.8 },
{ 166, 0.625, 80.5 }, { 167, 0.62, 81.2 }, { 168, 0.615, 81.9 }, { 169, 0.61, 82.5 }, { 170, 0.605, 83.2 },
{ 171, 0.6, 83.9 }, { 172, 0.595, 84.5 }, { 173, 0.59, 85.2 }, { 174, 0.585, 85.9 }, { 175, 0.58, 86.6 },
{ 176, 0.575, 87.2 }, { 177, 0.57, 87.9 }, { 178, 0.565, 88.6 }, { 179, 0.56, 89.2 }, { 180, 0.555, 89.9 } }

return M