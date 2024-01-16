const db = require('../db.js'); 
const getHospitalPsychiatrists = (req, res) => {
  const { hospitalId } = req.params;

  if (!hospitalId) {
      return res.status(400).json({ message: 'Hospital ID is required' });
  }

  db.query(
      'SELECT * FROM hospitals WHERE id = ?',
      [hospitalId],
      (hospitalErr, hospitals) => {
          if (hospitalErr) {
              console.error(hospitalErr);
              return res.status(500).json({ message: 'Internal server error' });
          }

          if (hospitals.length === 0) {
              return res.status(404).json({ message: 'Hospital not found' });
          }

          const hospital = hospitals[0];

          db.query(
              'SELECT * FROM psychiatrists WHERE hospital_id = ?',
              [hospitalId],
              (psychiatristErr, results) => {
                  if (psychiatristErr) {
                      console.error(psychiatristErr);
                      return res.status(500).json({ message: 'Internal server error' });
                  }

                  const psychiatristDetails = results.map((psychiatrist) => ({
                      id: psychiatrist.id,
                      name: psychiatrist.name,
                  }));

                  res.json({
                      hospitalName: hospital.name,
                      totalPsychiatristsCount: results.length,
                      psychiatristDetails,
                  });
              }
          );
      }
  );
};


const getHospitalPatients = (req, res) => {
  const { hospitalId } = req.params;

  if (!hospitalId) {
    return res.status(400).json({ message: 'Hospital ID is required' });
  }

  db.query(
    'SELECT * FROM hospitals WHERE id = ?',
    [hospitalId],
    (hospitalErr, hospitals) => {
      if (hospitalErr) {
        console.error(hospitalErr);
        return res.status(500).json({ message: 'Internal server error' });
      }

      if (hospitals.length === 0) {
        return res.status(404).json({ message: 'Hospital not found' });
      }

      const hospital = hospitals[0];

      db.query(
        'SELECT * FROM patients WHERE hospital_id = ?',
        [hospitalId],
        (patientErr, patients) => {
          if (patientErr) {
            console.error(patientErr);
            return res.status(500).json({ message: 'Internal server error' });
          }

          const patientDetails = patients.map((patient) => ({
            id: patient.id,
            name: patient.name,
          }));

          res.json({
            hospitalName: hospital.name,
            totalPatientsCount: patients.length,
            patientDetails,
          });
        }
      );
    }
  );
};


module.exports = {
  getHospitalPsychiatrists,
  getHospitalPatients,
};


