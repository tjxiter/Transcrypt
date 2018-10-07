# Make everything executable and the rest
chmod -R 777 .

# Start headless browser instance, Python's webbrowser.open will now refer to this instance
# - google-chrome-stable --headless --disable-gpu --remote-debugging-port=9222 http://localhost &

xdg-mime default google-chrome.desktop text/html
xdg-mime default google-chrome.desktop x-scheme-handler/http
xdg-mime default google-chrome.desktop x-scheme-handler/https
xdg-mime default google-chrome.desktop x-scheme-handler/about

# Enable shipment_test.py to find run_python
export PATH=$PATH:./transcrypt

# Run the shipment test
python ./transcrypt/development/shipment/shipment_test.py
