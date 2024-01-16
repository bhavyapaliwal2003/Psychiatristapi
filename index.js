const express = require('express');
const hospitalController = require('./controllers/hospitalController');
const patientRoutes = require('./routes/patients');

const app = express();

app.use(express.json());

app.get('/api/hospitalPsychiatrists/:hospitalId/psychiatrists', hospitalController.getHospitalPsychiatrists);
app.get('/api/hospitalPatients/:hospitalId/patients', hospitalController.getHospitalPatients);
app.use('/api/patients', patientRoutes);
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
