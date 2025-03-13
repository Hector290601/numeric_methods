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

function retval = read_matrix ()
  coefficients = get_user_matrix ("Is the coefficients matrix on a csv file")
  waitfor(msgbox("Readed matrix"))
  waitfor(msgbox(num2str(coefficients), "Readed matrix"));
  waitfor(msgbox("Verifying convergence criterias"));
  coefficients = convergent_matrix(coefficients);
  if coefficients != 0
    waitfor(msgbox("Coefficients convergence matrix"))
    msgbox(num2str(coefficients))
  else
    waitfor(msgbox("The matrix is NOT convergent"))
  endif
endfunction
