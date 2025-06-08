%## This program is free software: you can redistribute it and/or modify
%## it under the terms of the AGNU Affero General Public License as published by
%## the Free Software Foundation, either version 3 of the License.
%##
%## This program is distributed in the hope that it will be useful,
%## but WITHOUT ANY WARRANTY; without even the implied warranty of
%## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%## AGNU Affero General Public License for more details.
%##
%## You should have received a copy of the GNU General Public License
%## along with this program.  If not, see
%## <https://www.gnu.org/licenses/agpl-3.0.html>.

%## Authors:
%## López Zamora Rafael Arturo <rafitawp@gmail.com>
%## Pérez Gómez Víctor Hugo <victorhugo.perezg@gmail.com>
%## Robles Martinez Hector <hector@roblesm.mx>
%## Santoyo Solís José Ricardo <José Ricardo>
%## Created: 2025-06-07

function main()
  positions = read_data('./giant.xlsx');
  sizePositions = size(positions);
  frames = [];
  xpixels = [];
  ypixels = [];
  angles = [];
  radians = [];
  times_lineal = [];
  for i = 1:sizePositions(1)
    xpixel = positions(i+sizePositions(1));
    ypixel = positions(i+(sizePositions(1)*2));
    frames = [frames; positions(i)];
    times_lineal = [times_lineal; (0.15 * i)];
    xpixels = [xpixels; xpixel];
    ypixels = [ypixels; ypixel];
  endfor
  xmeters = px2m(xpixels, 1/100.003)
  ymeters = px2m(ypixels, 1/100.003)
  x_linear_speeds = linear_speed(xmeters, 0.15)
  y_linear_speeds = linear_speed(ymeters, 0.15)
  [angles, radians] = get_angles(positions);
  angles
  radians
  angular_speeds = angular_speed(radians, 0.15)
  angular_accelerations = angular_speed(angular_speeds, 0.3)
  times_lineal_accel = times_lineal(3:9);
  times_angular_speed = times_lineal(2:10);
  figure(1);
  subplot(1, 2, 1);
    plot(times_lineal, xmeters);
    xlabel ("Tiempo");
    ylabel ("X[m]");
    title ("Posición en X");
    grid on;
    axis on;
  subplot(1, 2, 2);
    plot(times_lineal, ymeters);
    xlabel ("Tiempo");
    ylabel ("Y[m]");
    title ("Posición en Y");
    grid on;
    axis on;
  figure(2);  
  subplot(1, 2, 1);
    plot(times_angular_speed, angular_speeds);
    xlabel ("Tiempo");
    ylabel ("W[m/s]");
    title ("Velocidad angular");
    grid on;
    axis on;
  subplot(1, 2, 2);
    plot(times_lineal_accel, angular_accelerations);
    xlabel ("Tiempo");
    ylabel ("a[m/s²]");
    title ("Aceleración angular");
    grid on;
    axis on;
  figure(3);
  plot(times_lineal, xmeters, '-', times_lineal, ymeters,  '-',times_angular_speed, angular_speeds,  '-',times_lineal_accel, angular_accelerations)
  legend('X [m]','Y[m]', 'W[m/s]', 'a[m/s²]');
  grid on;
  axis on;
endfunction
