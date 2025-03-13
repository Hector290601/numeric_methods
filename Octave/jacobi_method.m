#
# AGPLv3
# Author: Hector Robles Martinez.
# Date: 2025/05/06
#

msgbox("This script's licenced under the AGPLv3 by Hector Robles Martinez")

btn = questdlg ("Close Octave?", "Some fancy title", "Yes", "No", "No");
if (strcmp (btn, "Yes"))
  exit ();
endif