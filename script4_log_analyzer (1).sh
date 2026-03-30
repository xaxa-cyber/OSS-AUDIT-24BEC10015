
LOGFILE=$1
KEYWORD=${2:-"error"}   

COUNT=0

echo "============================================================"
echo "          Log File Analyzer"
echo "============================================================"
echo ""


if [ -z "$LOGFILE" ]; then
    echo "  ERROR: No log file specified."
    echo "  Usage: $0 /path/to/logfile [keyword]"
    echo "  Example: $0 /var/log/syslog error"
    echo ""
    echo "  Common log files to try:"
    echo "    /var/log/syslog      (Ubuntu/Debian)"
    echo "    /var/log/messages    (Fedora/CentOS)"
    echo "    /var/log/auth.log    (authentication events)"
    exit 1
fi


if [ ! -f "$LOGFILE" ]; then
    echo "  ERROR: File '$LOGFILE' not found."
    echo "  Please check the path and try again."
    exit 1
fi


if [ ! -s "$LOGFILE" ]; then
    echo "  WARNING: File '$LOGFILE' is empty. Nothing to analyze."
    exit 0
fi

echo "  Log file : $LOGFILE"
echo "  Keyword  : '$KEYWORD'"
echo "  Scanning..."
echo ""


MATCHES_FILE=$(mktemp)  


while IFS= read -r LINE; do


    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))          
        echo "$LINE" >> "$MATCHES_FILE"   
    fi

done < "$LOGFILE"   


echo "------------------------------------------------------------"
echo "  SUMMARY"
echo "------------------------------------------------------------"
echo "  Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE"
echo ""


if [ $COUNT -gt 0 ]; then
    echo "  Last 5 matching lines:"
    echo "  ............................................"
   
    tail -5 "$MATCHES_FILE" | while IFS= read -r MATCH_LINE; do
        echo "  > $MATCH_LINE"
    done
else
    echo "  No lines matching '$KEYWORD' were found."
fi


rm -f "$MATCHES_FILE"

echo ""
echo "============================================================"