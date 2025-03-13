## Copyright (C) 2025 Hector Robles Martinez
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the AGNU Affero General Public License as published by
## the Free Software Foundation, either version 3 of the License.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## AGNU Affero General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/agpl-3.0.html>.

## Author: Hector Robles Martinez <hector@roblesm.mx>
## Created: 2025-03-06

function retval = swap_row (A, src, dst)
  sizedata = size(A)(1);
  if(dst > sizedata)
    dst = 1;
  endif
  disp(['swapping row ', int2str(src), ' to ', int2str(dst)])
  for row=1:sizedata
    if row == src
      tmp(row, 1:sizedata) = A(dst, 1:sizedata);
    elseif row == dst
      tmp(row, 1:sizedata) = A(src, 1:sizedata);
    else
      tmp(row, 1:sizedata) = A(row, 1:sizedata);
    endif
  endfor
  retval = tmp;
endfunction