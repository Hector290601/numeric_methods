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

function retval = convergence_criterias (A)
  retval = false;
  dims = size(A);
  if(dims(1) != dims(2))
    waitfor(msgbox("The input matrix isn't operable"));
    return
  endif
  for rows=1:dims(1)
    base = abs(A(rows, rows));
    sum = 0;
    for cols=1:dims(1)
      if(cols != rows)
        tmp = abs(A(rows, cols));
        if(tmp >= base)
          return;
        endif
        sum += tmp;
        if(sum >= base)
          return;
        endif
      endif
    endfor
  endfor
  retval = A;
endfunction