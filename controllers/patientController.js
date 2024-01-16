const patientModel = require('../models/patientModel');

const registerPatient = (name, address, email, phone, password, photo, hospital_id, res) => {
  hospital_id = parseInt(hospital_id);
  console.log('Received data:', { name, address, email, phone, password, photo, hospital_id });
  
  const newPatient = {
    name,
    address,
    email,
    phone,
    password,
    photo,
    hospital_id,
  };

  console.log('Attempting to save patient data:', newPatient);

  patientModel.create(newPatient, (err, result) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ message: 'Error saving patient data' });
    } else {
      console.log('Patient registered successfully');
      res.json({ message: 'Patient registration successful' });
    }
  });
};

module.exports = {
  registerPatient,
};
