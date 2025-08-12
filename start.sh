#!/bin/bash

# Start the Python HTTP server on the port provided by Render
exec python -m http.server $PORT
