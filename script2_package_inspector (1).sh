
PACKAGE="git"   

echo "============================================================"
echo "          FOSS Package Inspector"
echo "============================================================"
echo ""

if command -v $PACKAGE &>/dev/null; then
    echo "  Status  : $PACKAGE is INSTALLED on this system."
    echo ""

    if rpm -q $PACKAGE &>/dev/null; then
        echo "  --- Package Details (RPM) ---"
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'

    elif dpkg -l $PACKAGE &>/dev/null; then
        echo "  --- Package Details (DEB) ---"
        dpkg -l $PACKAGE | grep -v "^|" | tail -1

    else
        
        echo "  Version : $(git --version)"
        echo "  License : GNU General Public License v2 (GPL v2)"
    fi

else
    
    echo "  Status  : $PACKAGE is NOT installed on this system."
    echo "  To install on Ubuntu/Debian : sudo apt install git"
    echo "  To install on Fedora/CentOS : sudo dnf install git"
fi

echo ""
echo "------------------------------------------------------------"
echo "  Open Source Philosophy Note"
echo "------------------------------------------------------------"


case $PACKAGE in
    git)
        echo "  Git: Born in 10 days out of frustration with proprietary tools."
        echo "  Linus Torvalds built Git so that Linux development would"
        echo "  never again depend on software the community did not control."
        ;;
    httpd | apache2)
        echo "  Apache: The web server that built the open internet."
        echo "  It powered over half of all websites at its peak."
        ;;
    mysql | mariadb)
        echo "  MySQL/MariaDB: Open source at the heart of millions of apps."
        echo "  MariaDB was forked when Oracle acquired MySQL — a real"
        echo "  lesson in why community forks matter."
        ;;
    vlc)
        echo "  VLC: Built by students in Paris who just wanted to watch videos."
        echo "  It plays literally anything — and it's free forever."
        ;;
    firefox)
        echo "  Firefox: A nonprofit fighting for an open web."
        echo "  Mozilla exists to ensure the internet is not controlled"
        echo "  by a single corporation."
        ;;
    *)
        # Default case if none of the above match
        echo "  $PACKAGE: An open-source tool built on the belief that"
        echo "  software should be free to use, study, and share."
        ;;
esac

echo ""
echo "============================================================"