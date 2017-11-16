python
import sys
import os
import os.path
sys.path.insert(0, os.path.join(os.environ['HOME'], 'src', 'Boost-Pretty-Printer'))
import boost
boost.register_printers(None)
end
