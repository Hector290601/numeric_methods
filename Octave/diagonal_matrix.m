%## Copyright (C) 2025 Hector Robles Martinez
%##
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

%## Author: Hector Robles Martinez <hector@roblesm.mx>
%## Created: 2025-04-02

function [D, R] = diagonal_matrix(A)
  sizedata = size(A)(1);
  D = zeros(sizedata, sizedata);
  R = zeros(sizedata, sizedata);
  for row=1:sizedata
    for col=1:sizedata
      if (row == col)
        D(row, col) = A(row, col);
      else
        R(row, col) = A(row, col);
      endif
      endfor
    endfor
    return
endfunction