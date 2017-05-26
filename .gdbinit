python
import sys
import os
import os.path
sys.path.insert(0, os.path.join(os.environ['HOME'], 'src', 'Boost-Pretty-Printer'))
from boost.printers import register_printer_gen
register_printer_gen(None)
end
