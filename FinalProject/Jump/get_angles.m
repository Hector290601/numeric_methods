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

function [angles, radians] = get_angles(data)
  sizeData = size(data);
  angles = [];
  radians = [];
  for i = 1:sizeData(1)
    xpixel = data(i+sizeData(1));
    ypixel = data(i+(sizeData(1)*2));
    angles_tmp = xy2angle(xpixel, ypixel);
    if i >= 1 && i<= 5
      angle = abs(angles_tmp(1));
      radian = abs(angles_tmp(2));
    elseif i >= 6 && i<= 7
      angle = 180 - abs(angles_tmp(1));
      radian = pi - abs(angles_tmp(2));
    elseif i >= 8 && i<= 9
      angle = abs(angles_tmp(1)) + 180;
      radian = abs(angles_tmp(2)) + pi;
    elseif i >= 10 && i<= 11
      angle = 360 - abs(angles_tmp(1));
      radian = (2*pi) - abs(angles_tmp(2));
    endif
    angles = [angles; angle];
    radians = [radians; radian];
  endfor
  return
endfunction
