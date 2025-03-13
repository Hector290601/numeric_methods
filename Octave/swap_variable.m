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

function retval = swap_variable (A, src, dst)
  sizedata = size(A)(1);
  if(dst > sizedata)
    dst = 1;
  endif
  for col=1:sizedata
    if col==src
      tmp(col, 1) = A(dst, 1);
    elseif col==dst
      tmp(col, 1) = A(src, 1);
    else
      tmp(col, 1) = A(col, 1);
    endif
  endfor
  retval = tmp;
endfunction