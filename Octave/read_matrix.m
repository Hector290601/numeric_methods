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
%## Created: 2025-03-06

function retval = read_matrix ()
  coefficients = get_user_matrix ("Is the coefficients matrix on a csv file")
  size(coefficients)
  constants = get_user_array("Is the results array on a csv file");
  waitfor(msgbox("Readed coefficients matrix"));
  waitfor(msgbox(num2str(coefficients), "Readed Coefficent matrix"));
  waitfor(msgbox("Readed constants array"));
  waitfor(msgbox(num2str(constants), "Readed constants array"));
  waitfor(msgbox("Verifying convergence criterias"));
  [coefficients, variables] = convergent_matrix(coefficients);
  if coefficients != 0
    waitfor(msgbox("Coefficients convergence matrix"));
    waitfor(msgbox(num2str(coefficients)));
    [D, R] = diagonal_matrix(coefficients)
    waitfor(msgbox("Diagonal matrix"));
    waitfor(msgbox(num2str(D)));
    waitfor(msgbox("Diagonal matrix"));
    waitfor(msgbox(num2str(R)));
    arbitrary_values = get_arbitrary(coefficients, constants)
    waitfor(msgbox("Initial values"));
    waitfor(msgbox(num2str(arbitrary_values)));
    results = jacobi_method(coefficients, arbitrary_values, constants);
    waitfor(msgbox(num2str(results)));
  else
    waitfor(msgbox("The matrix is NOT convergent"));
  endif
endfunction
