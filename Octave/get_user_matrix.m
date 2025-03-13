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

function retval = get_user_matrix (MainQuesation)
  source_selection = questdlg(MainQuesation)
  if(strcmp(source_selection, "Yes"))
    while(1==1)
      path = uigetfile('*.csv')
      try
        data = load(path)
        break
      catch error
        waitfor(msgbox(error.message))
      end_try_catch
    endwhile
  else
    while 1==1
      try
        number_rows = str2num(inputdlg('Array size'){1})
        break
      catch error
        waitfor(msgbox(error.message))
      end_try_catch
    endwhile
    number_cols = number_rows
    data = zeros(number_rows, number_cols)
    for count_rows=1:number_rows
      for count_cols=1
        while 1==1
          try
            data(count_rows, count_cols)=str2num(
              inputdlg(
                strcat("Array on ", num2str(count_rows), ",", num2str(count_cols))
              ){1}
            )
            break
          catch error
            waitfor(msgbox(error.message))
          end_try_catch
        endwhile
      endfor
    endfor
  endif
  retval = data
endfunction
