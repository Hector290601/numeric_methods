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

function retval = swap_col (A, src, dst)
  sizedata = size(A)(1);
  if(dst > sizedata)
    dst = 1;
  endif
  disp(['swapping col ', int2str(src), ' to ', int2str(dst)])
  for col=1:sizedata
    if col==src
      tmp(1:sizedata, col) = A(1:sizedata, dst);
    elseif col==dst
      tmp(1:sizedata, col) = A(1:sizedata, src);
    else
      tmp(1:sizedata, col) = A(1:sizedata, col);
    endif
  endfor
  retval = tmp;
endfunction