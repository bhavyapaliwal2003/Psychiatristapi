const db = require('../db');

const create = (patientData, callback) => {
  const { name, address, email, phone, password, photo, hospital_id } = patientData;
  
  db.query(
    'INSERT INTO patients (name, address, email, phone, password, photo, hospital_id) VALUES (?, ?, ?, ?, ?, ?, ?)',
    [name, address, email, phone, password, photo, hospital_id],
    (err, result) => {
      if (err) {
        console.error('Error inserting patient data:', err);
        return callback(err, null);
      }
      
      console.log('Patient data inserted successfully:', result);
      callback(null, result);
    }
  );
};

module.exports = {
  create,
};
