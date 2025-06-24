# Huddle
A Website used for hosting gatherings with features including

- online payment
- User Management
- Booking management
- Event Management
- Reviews
- Searching and Filter
- Reminders and Confirmation
- Recommendations
- Chat Channels
- Rewards and Gamification
- Chatbot (Non-AI)


To setup the program run the following files:
Note: All instructions are used for UNIX

bash setup.sh  # for set up

## Manual Setup

### Frontend
#### Required packages
Make sure the React version in use is 18.2.0
install the react version using the following line:

npm install react@18.2.0 react-dom@18.2.0


then install the following required packages:

npm install axios
npm install react-router-dom
npm install @mui/material @emotion/react @emotion/styled
npm install @mui/icons-material
npm install @mui/lab
npm install react-bootstrap bootstrap
npm install react-chatbot-kit
npm install dayjs moment-timezone
npm install @mui/x-date-pickers
npm install react-credit-cards-2
npm install react-infinite-scroll-component
npm install @kiwicom/orbit-components
npm install bad-words
npm install @fullcalendar/react @fullcalendar/daygrid @fullcalendar/timegrid @fullcalendar/interaction @fullcalendar/bootstrap
npm install @fortawesome/fontawesome-free
npm install card-validator
npm install react-qr-code


### Server & Database
#### Setup
##### Server
run the following code to setup a python env and install the required packages

python3 -m venv huddle_env
source huddle_env/bin/activate
pip install -r requirements.txt

*if there is an error installing the "psycopg2" package, try the following line

sudo apt-get install python3-dev libpq-dev postgresql-client

##### Database
if not installed yet, install postgres with the following lines

sudo apt install postgresql postgresql-contrib
sudo service postgresql start

then, create the user

## RUN
### Frontend

npm start

### Backend

cd backend
python3 -m server






