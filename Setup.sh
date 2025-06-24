
# Frontend
PACKAGES=(
    "react@18.3.0" 
    "react-dom@18.2.0"
    "axios@1.10.0"
    "react-router-dom@7.6.2"
    "@mui/material@7.1.2"
    "@emotion/react@11.14.0"
    "@emotion/styled@11.14.0"
    "@mui/icons-material@7.1.2"
    "@mui/lab@7.0.0-beta.14"
    "react-bootstrap@2.10.10"
    "bootstrap@5.3.7"
    "react-chatbot-kit@2.2.2"
    "dayjs@1.11.13"
    "moment-timezone@0.6.0"
    "@mui/x-date-pickers@8.5.3"
    "react-credit-cards-2@1.0.3"
    "react-infinite-scroll-component@6.1.0"
    "@kiwicom/orbit-components@24.0.0"
    "bad-words@4.0.0"
    "@fullcalendar/react@6.1.17"
    "@fullcalendar/daygrid@6.1.17"
    "@fullcalendar/timegrid@6.1.17"
    "@fullcalendar/interaction@6.1.17"
    "@fullcalendar/bootstrap@6.1.17"
    "@fortawesome/fontawesome-free@6.7.2"
    "card-validator@10.0.2"
    "react-qr-code@2.0.16"
)

for PACKAGE in "${PACKAGES[@]}"; do
    if ! npm list "$PACKAGE" &>/dev/null; then
        echo "Installing $PACKAGE..."
        npm install "$PACKAGE"
    else
        echo "$PACKAGE is already installed."
    fi
done


# Backend

if ! command -v python3 &> /dev/null; then
    echo "Python3 is not installed. Please install Python3 and try again."
    exit 1
fi

VENV_DIR="huddle_env"

if [ -d "$VENV_DIR" ]; then
    echo "Python virtual environment ($VENV_DIR) exists."
else
    echo "Python virtual environment ($VENV_DIR) does NOT exist."
    python -m venv "$VENV_DIR"
fi

source huddle_env/bin/activate
pip install -r backend/requirements.txt


# Database
if ! command -v psql &> /dev/null; then
    echo "PostgreSQL is NOT installed."
    exit 1
fi

# Check if PostgreSQL service is running
if ! pgrep -x "postgres" &> /dev/null; then
    echo "PostgreSQL is installed but NOT running."
    exit 1
else
    echo "PostgreSQL is installed and running."
fi