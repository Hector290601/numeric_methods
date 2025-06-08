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
  positions = read_data('./jump.xlsx');
  sizePositions = size(positions);
  frames = [];
  xpixels = [];
  ypixels = [];
  times_lineal = [];
  std_time = 1/30;
  for i = 1:sizePositions(1)
    xpixel = positions(i+sizePositions(1));
    ypixel = positions(i+(sizePositions(1)*2));
    frames = [frames; positions(i)];
    times_lineal = [times_lineal; (0.15 * i)];
    xpixels = [xpixels; xpixel];
    ypixels = [ypixels; ypixel];
  endfor
  xmeters = px2m(xpixels, 1/110);
  ymeters = px2m(ypixels, 1/110);
  xspeed = linear_speed(xmeters, std_time);
  xaccel = linear_speed(xspeed, std_time);
  yspeed = linear_speed(ymeters, std_time);
  yaccel = linear_speed(yspeed, std_time);
  times_lineal_speed = times_lineal(2:(sizePositions(1)-1));
  times_lineal_accel = times_lineal(3:(sizePositions(1)-2));
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
    plot(times_lineal_speed, xspeed);
    xlabel ("Tiempo");
    ylabel ("X[m/s]");
    title ("Velocidad lineal en X");
    grid on;
    axis on;
  subplot(1, 2, 2);
    plot(times_lineal_speed, yspeed);
    xlabel ("Tiempo");
    ylabel ("Y[m/s]");
    title ("Velocidad lineal en Y");
    grid on;
    axis on;
  figure(3);
  subplot(1, 2, 1);
    plot(xmeters, ymeters);
    xlabel ("X[m/s]");
    ylabel ("Y[m/s]");
    title ("Posición lineal en X, Y");
    grid on;
    axis on;
  subplot(1, 2, 2);
    plot(xspeed, yspeed);
    xlabel ("X[m/s]");
    ylabel ("Y[m/s]");
    title ("Velocidad lineal en X, Y");
    grid on;
    axis on;
  figure(4);
  subplot(1, 2, 1);
    plot(times_lineal_accel, xaccel);
    xlabel ("Tiempo");
    ylabel ("X[m/s²]");
    title ("Aceleración lineal en X");
    grid on;
    axis on;
  subplot(1, 2, 2);
    plot(times_lineal_accel, yaccel);
    xlabel ("Tiempo");
    ylabel ("Y[m/s²]");
    title ("Aceleración lineal en Y");
    grid on;
    axis on;
  figure(5);
  subplot(1, 1, 1);
    plot(xaccel, yaccel);
    xlabel ("Tiempo");
    ylabel ("X,Y[m/s²]");
    title ("Aceleración lineal en X,Y");
    grid on;
    axis on;   
  figure(6);
    plot(
      times_lineal, xmeters, '-',
      times_lineal, ymeters, '-',
      times_lineal_speed, xspeed, '-',
      times_lineal_speed, yspeed, '-',
      xmeters, ymeters, '-',
      xspeed, yspeed, '-',
      times_lineal_accel, xaccel, '-',
      times_lineal_accel, yaccel, '-',
      xaccel, yaccel, '-'
    )
    legend(
      'X [m]','Y[m]',
      'VX[m/s]','VY[m/s]',
      'Y[m]:X[m]','VX[m/s]:VY[m/s]',
      'AX[m/s²]','AY[m/s²]',
      'VX[m/s²]:VY[m/s²]'
    );
    title ("Gráficas generales");
    grid on;
    axis on;    
 
endfunction
