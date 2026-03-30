
STUDENT_NAME="[anuj xaxa]"      
REG_NO="[24bec10015]"          
SOFTWARE_CHOICE="Git"           

KERNEL=$(uname -r)               
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  
USER_NAME=$(whoami)              
HOME_DIR=$HOME                  
UPTIME=$(uptime -p)              
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')   


OS_LICENSE="GNU General Public License version 2 (GPL v2)"


echo "============================================================"
echo "        Open Source Software Audit — System Identity        "
echo "============================================================"
echo ""
echo "  Student   : $STUDENT_NAME ($REG_NO)"
echo "  Auditing  : $SOFTWARE_CHOICE"
echo ""
echo "------------------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "------------------------------------------------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "------------------------------------------------------------"
echo "  LICENSE"
echo "------------------------------------------------------------"
echo "  This operating system (Linux) is covered under:"
echo "  $OS_LICENSE"
echo ""
echo "  GPL v2 guarantees four freedoms: the freedom to run,"
echo "  study, share, and modify the software."
echo "============================================================"