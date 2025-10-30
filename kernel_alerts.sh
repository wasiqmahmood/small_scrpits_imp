#!/bin/bash
# kernel_alerts.sh — Monitor OOM/BUG/Call Trace for recent time window
WIN_MIN=${1:-15}
LOG="/var/log/kernel_alerts.log"

echo "$(date) — Kernel alerts (last ${WIN_MIN} minutes)" | tee -a "$LOG"

# Check kernel logs for critical errors
journalctl -k --since "-${WIN_MIN} min" -o cat 2>/dev/null \
 | grep -Ei 'out of memory|oom-killer|call trace|BUG:|kernel panic|I/O error|EXT4-fs error|xfs.*error|segfault|general protection fault' \
 | sed 's/^/ALERT: /' | tee -a "$LOG"

# Check if any errors were found
if [ ${PIPESTATUS[1]} -eq 0 ]; then
    echo "CRITICAL: Kernel errors detected!" | tee -a "$LOG"
    exit 1
else
    echo "OK: No critical kernel issues found" | tee -a "$LOG"
    exit 0
fi
