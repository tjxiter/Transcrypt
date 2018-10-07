# Make everything executable and the rest
chmod -R 777 .

# Start headless browser instance, Python's webbrowser.open will now refer to this instance
# google-chrome-stable --headless --disable-gpu
chrome --no-sandbox --no-default-browser-check --no-first-run --disable-default-apps

# Enable shipment_test.py to find run_python
export PATH=$PATH:./transcrypt

# Run the shipment test
python ./transcrypt/development/shipment/shipment_test.py
