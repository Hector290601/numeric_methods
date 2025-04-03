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

function arbitrary_values = get_arbitrary(A, B)
  sizedata = size(A)(1);
  C = zeros(size(B)(1), 1);
  for row=1:sizedata
    C(row, 1) = B(row, 1) / A(row, row);
  endfor
  arbitrary_values = C;
  return
endfunction