const express = require('express');
const router = express.Router();
const hospitalController = require('../controllers/hospitalController');

router.post('/psychiatrists/:hospitalId', hospitalController.getHospitalPsychiatrists);

module.exports = router;
