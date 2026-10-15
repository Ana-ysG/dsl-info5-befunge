#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./run.sh <programme.bf>"
    exit 1
fi

PROGRAM=$1
TEST_DIR="tests"
FAILED=0
TOTAL=0

echo "=== Lancement des tests pour $PROGRAM avec cfunge ==="

for in_file in "$TEST_DIR"/*.in; do
    [ -e "$in_file" ] || continue
    
    TOTAL=$((TOTAL + 1))
    base_name=$(basename "$in_file" .in)
    out_file="$TEST_DIR/$base_name.out"

    output=$(cfunge "$PROGRAM" < "$in_file")
    expected=$(cat "$out_file")
    
    if [ "$output" = "$expected" ]; then
        echo "[SUCCÈS] Test $base_name"
    else
        echo "[ÉCHEC] Test $base_name"
        echo "  Attendu : '$expected'"
        echo "  Obtenu  : '$output'"
        FAILED=$((FAILED + 1))
    fi
done

echo "-----------------------------------"
echo "Résultat : $((TOTAL - FAILED)) / $TOTAL tests réussis."

if [ $FAILED -gt 0 ]; then
    exit 1
fi