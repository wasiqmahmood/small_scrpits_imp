Bilkul! Main dono scripts ke liye alag-alag README files create karta hoon:

## README 1: `dependency_files.md`

```markdown
# Automated Dependency Updater Script

A bash script that automatically updates Python dependencies and syncs changes with GitHub.

## 📁 File Information
- **Script Name**: `dependency_files.sh`
- **Location**: `/home/scripts_files/`
- **Purpose**: Automated Python package management

## 🚀 Features
- ✅ Automatic Git synchronization
- ✅ Python dependency updates
- ✅ Conditional execution (only if requirements.txt exists)
- ✅ Automated commits with timestamps
- ✅ Error handling for directory changes

## 🔧 Script Code
```bash
#!/bin/bash

PROJECT_DIR="/home/scripts_files"
DEPENDENCIES_FILE="requirements.txt"

cd "$PROJECT_DIR" || exit
git pull origin main

# If Python dependencies exist
if [ -f "$DEPENDENCIES_FILE" ]; then
    pip install -r "$DEPENDENCIES_FILE" --upgrade
    git add "$DEPENDENCIES_FILE"
    git commit -m "Auto-update: $(date)"
    git push origin main
fi
```

## 📋 Usage
```bash
# Make executable
chmod +x dependency_files.sh

# Run script
./dependency_files.sh
```

## 🔄 Workflow
1. **Navigate** to project directory
2. **Pull** latest code from GitHub
3. **Check** if requirements.txt exists
4. **Update** Python packages if needed
5. **Commit** and **push** dependency changes

## ⚙️ Configuration
- **PROJECT_DIR**: Set your project path
- **DEPENDENCIES_FILE**: Name of dependencies file (default: requirements.txt)

## 🐛 Troubleshooting
- Ensure Python and pip are installed
- Verify GitHub credentials are configured
- Check internet connection for package downloads

## 🕐 Automation
```bash
# Add to crontab for daily updates
0 2 * * * /home/scripts_files/dependency_files.sh
```

---

## README 2: `parallel_tasks.md`

```markdown
# Parallel Task Execution Script

A sophisticated bash script demonstrating advanced parallel processing with dynamic task management.

## 📁 File Information
- **Script Name**: `parallel_tasks.sh`
- **Purpose**: Advanced parallel task execution demo
- **Level**: Intermediate/Advanced Bash scripting

## 🚀 Features
- ✅ Dynamic task array system
- ✅ Process ID tracking and management
- ✅ Professional logging with emojis
- ✅ Flexible task configuration
- ✅ Automatic task counting

## 🔧 Script Code
```bash
#!/bin/bash

# Function for parallel tasks
long_task() {
  local duration=$1
  local task_name=$2
  echo "🟢 STARTED: $task_name (sleeping for ${duration}s)"
  sleep $duration
  echo "✅ FINISHED: $task_name (took ${duration}s)"
}

# Array of tasks (duration in seconds, task name)
tasks=(
  "3|Database Backup"
  "5|File Processing" 
  "2|Cache Clear"
  "4|Email Sending"
)

echo "🚀 Starting ${#tasks[@]} parallel tasks..."
pids=()

# Start all tasks in background
for task in "${tasks[@]}"; do
  IFS='|' read -r duration name <<< "$task"
  long_task "$duration" "$name" &
  pids+=($!)
done

# Wait for all tasks to complete
echo "⏳ Waiting for ${#pids[@]} tasks to finish..."
for pid in "${pids[@]}"; do
  wait "$pid"
done

echo "🎉 All ${#tasks[@]} tasks completed!"
```

## 📋 Usage
```bash
# Make executable
chmod +x parallel_tasks.sh

# Run script
./parallel_tasks.sh
```

## 📊 Sample Output
```
🚀 Starting 4 parallel tasks...
🟢 STARTED: Database Backup (sleeping for 3s)
🟢 STARTED: File Processing (sleeping for 5s)
🟢 STARTED: Cache Clear (sleeping for 2s)
🟢 STARTED: Email Sending (sleeping for 4s)
✅ FINISHED: Cache Clear (took 2s)
✅ FINISHED: Database Backup (took 3s)
✅ FINISHED: Email Sending (took 4s)
✅ FINISHED: File Processing (took 5s)
🎉 All 4 tasks completed!
```

## 🔧 Customization

### Modify Tasks Array:
```bash
tasks=(
  "1|Quick Task"
  "10|Long Process"
  "5|Medium Operation"
)
```

### Add More Tasks:
```bash
tasks=(
  "3|Database Backup"
  "5|File Processing" 
  "2|Cache Clear"
  "4|Email Sending"
  "6|Report Generation"  # New task
  "1|Cleanup"           # New task
)
```

## 🎯 Advanced Features

### Dynamic Task Counting:
- `${#tasks[@]}` - Automatically counts tasks
- `${#pids[@]}` - Tracks running processes

### Process Management:
- `&` - Background execution
- `$!` - Process ID capture
- `wait` - Process synchronization

## 💡 Learning Points
- Array manipulation in Bash
- String splitting with IFS
- Process management
- Parallel programming concepts
- Dynamic variable counting

## 🔄 Real-World Applications
- Batch file processing
- Multiple API calls
- Database operations
- Concurrent downloads
- Parallel computations

## ⏱️ Performance
- **Sequential**: 3+5+2+4 = 14 seconds
- **Parallel**: Max(3,5,2,4) = 5 seconds
- **Time Saved**: 64% faster

---

## 🎯 Combined Usage Guide

### File Structure:
```
/home/scripts_files/
├── dependency_updater.sh
├── parallel_tasks.sh
├── requirements.txt (optional)
└── README.md
```

### Quick Start:
```bash
# Make all scripts executable
chmod +x *.sh

# Test parallel tasks
./parallel_tasks.sh

# Run dependency updater (if Python project)
./dependency_updater.sh
```

### GitHub Push:
```bash
git add dependency_updater.sh parallel_tasks.sh
git commit -m "Add advanced automation scripts"
git push origin main
```

**Tags**: #bash #automation #parallel-processing #python #git
```

## 📁 GitHub par Push karne ke liye:

```bash
cd /home/scripts_files

# Dono README files create karo
echo "# Dependency Updater" > dependency_updater.md
echo "# Parallel Tasks" > parallel_tasks.md

# GitHub par push karo
git add dependency_updater.md parallel_tasks.md
git commit -m "Add detailed documentation for both scripts"
git push origin main
```

Yeh dono README files professional documentation provide karti hain har script ke liye! 🚀
```

---

## README 3: `Kernel Monitor Scripts`

```markdown
# Kernel Monitor Scripts

System kernel errors check karne ke liye scripts.

## Files:
- `kernel_alerts.sh` - Kernel errors monitor karta hai
- `kernel_check.sh` - Simple version

## Usage:
```bash
./kernel_alerts.sh          # Last 15 minutes
./kernel_alerts.sh 30       # Last 30 minutes
```

## Checks:
- Memory errors
- System crashes  
- Disk errors
- Kernel problems

Logs: `/var/log/kernel_alerts.log`
```

**Ya phir aur bhi chota:**

```markdown
# Kernel Scripts

`kernel_alerts.sh` - System errors check karta hai

**Use:**
```bash
./kernel_alerts.sh
./kernel_alerts.sh 30
```

**Checks:** OOM, Crashes, Disk errors
**Logs:** /var/log/kernel_alerts.log
```
