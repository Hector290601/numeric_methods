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

function results = jacobi_method(A, x, b)
  sizedata = size(A)(1);
  D = zeros(size(A)(1), 1);
  for row=1:sizedata
    for col=1:sizedata
      sum = 0;
      if row!=col
        sum = A(row, col) * x(col, 1);
      endif
    endfor
    D(row, 1) = (b(row)-sum)/A(row, row);
  endfor
  results = D;
endfunction