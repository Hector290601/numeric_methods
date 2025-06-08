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

function speeds = linear_speed(data, times)
  sizedata = size(data)(1);
  times = 2*times;
  derivates = [];
  for i = 2:(sizedata-1)
    left_point = data(i-1);
    right_point = data(i+1);
    derivate = central_derivate(left_point, right_point, times);
    derivates = [derivates; derivate];
  endfor
  speeds = derivates;
endfunction
