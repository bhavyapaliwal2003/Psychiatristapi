const express = require('express');
const router = express.Router();

const hospitalController = require('../controllers/hospitalController');

router.get('/api/hospitalData/:hospitalId', hospitalController.getHospitalData);

module.exports = router;
