# Psychiatry Center Management System

This project is a Psychiatry Center Management System that provides APIs for managing psychiatrists, patients, and hospitals.

## Frameworks Used
- **Node.js**
- **Express.js** 
- **MySQL**
  
## Libraries Used
- **bcrypt** (Version 5.1.1): Used for hashing passwords securely.
- **body-parser** (Version 1.20.2): Middleware to parse incoming request bodies.
- **express** (Version 4.18.2): Web application framework for Node.js.
- **mysql2** (Version 3.7.0): MySQL database connectivity for Node.js.
- **validator** (Version 13.11.0): A library for string validation and sanitization.


  
## API Endpoints

- **GET /api/hospitalPsychiatrists/:hospitalId/psychiatrists**
  - **Description:** Get psychiatrists for a specific hospital.
  - **Parameters:** `hospitalId` - ID of the hospital.
- **GET /api/hospitalPatients/1/patients**
  - **Description:** Get patient for a specific hospital.
  - **Parameters:** `hospitalId` - ID of the hospital.
- **POST /api/patients/register**
  - **Description:** Register a new patient.
  - **Parameters:**
    - `name` (string, required): Name of the patient.
    - `address` (string, required): Address of the patient (minimum 10 characters).
    - `email` (string, required): Valid email address of the patient.
    - `phone` (string, required): Phone number of the patient (at least 10 digits with country code).
    - `password` (string, required): Password with one upper character, one lower character, and a number (8-15 characters).
    - `photo` (string, required): URL of the patient's photo.
    - `hospital_id` (integer, required): ID of the hospital.

## Documentation

- **Postman**  [<img src="https://run.pstmn.io/button.svg" alt="Run In Postman" style="width: 128px; height: 32px;">](https://god.gw.postman.com/run-collection/31109743-e9584fad-1cde-491e-88be-a1d863601141?action=collection%2Ffork&source=rip_markdown&collection-url=entityId%3D31109743-e9584fad-1cde-491e-88be-a1d863601141%26entityType%3Dcollection%26workspaceId%3D04382932-cd15-42d3-b857-f211989e462f)

## Database

- **patient.sql**  

## Getting Started

1. Clone the repository: `git clone https://github.com/yourusername/psychiatry-center.git`
2. Install dependencies: `npm install`
3. Start the server: `npm start`


