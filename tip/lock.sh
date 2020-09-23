if [[ -f .lock ]]; then
    echo "already running..."
else
    touch .lock
    echo "running"
    rm .lock
fi
