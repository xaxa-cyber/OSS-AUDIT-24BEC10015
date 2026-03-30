

echo "============================================================"
echo "       Open Source Manifesto Generator"
echo "============================================================"
echo ""
echo "  Answer three questions to generate your personal"
echo "  open source manifesto. Be honest and thoughtful!"
echo ""
echo "------------------------------------------------------------"


read -p "  1. Name one open-source tool you use every day: " TOOL
echo ""

read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
echo ""

read -p "  3. Name one thing you would build and share freely: " BUILD
echo ""


DATE=$(date '+%d %B %Y')


OUTPUT="manifesto_$(whoami).txt"

echo "------------------------------------------------------------"
echo "  Generating your manifesto..."
echo ""

echo "============================================================" > "$OUTPUT"
echo "  MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "  Generated on: $DATE" >> "$OUTPUT"
echo "  Author: $(whoami)" >> "$OUTPUT"
echo "============================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"


echo "  Every day, I rely on $TOOL — a tool that exists because" >> "$OUTPUT"
echo "  someone chose to build it openly and share it with the world." >> "$OUTPUT"
echo "  To me, 'freedom' means $FREEDOM. In the world of software," >> "$OUTPUT"
echo "  that freedom is not a luxury — it is the foundation that" >> "$OUTPUT"
echo "  makes collaboration, learning, and trust possible." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  Open source taught me that the best ideas grow when they" >> "$OUTPUT"
echo "  are shared, not hoarded. The programmers who built Linux," >> "$OUTPUT"
echo "  Git, Python, and Firefox did not keep their work locked away." >> "$OUTPUT"
echo "  They released it, and the world built on top of it." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  I believe in giving back. One day, I intend to build" >> "$OUTPUT"
echo "  $BUILD — and when I do, I will share it freely," >> "$OUTPUT"
echo "  so that others can use it, study it, and improve it," >> "$OUTPUT"
echo "  just as I have benefited from the work of those before me." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  This is my commitment to the open source philosophy." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "============================================================" >> "$OUTPUT"


echo "  Done! Your manifesto has been saved to: $OUTPUT"
echo ""
echo "------------------------------------------------------------"
echo "  Here is what was written:"
echo "------------------------------------------------------------"
echo ""


cat "$OUTPUT"

echo ""
echo "============================================================"