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

function [convergent_matrix_matrix, variables_matrix] = convergent_matrix (A)
  convergent_matrix_matrix = 0;
  row_count = 0;
  col_count = 0;
  sizedata = size(A)(1);
  variables = transpose([char('a'):char('a'+sizedata-1)]);
  for row=1:sizedata
    for col=1:sizedata
      if(convergence_criterias(A))
        convergent_matrix_matrix = A;
        variables_matrix = variables;
        return
      endif
      A=swap_col(A, col, col+1);
      variables=swap_variable(variables, col, col+1);
    endfor
    A=swap_row(A, row, row+1);
  endfor
endfunction