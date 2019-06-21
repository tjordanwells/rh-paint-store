const router = require('express').Router();
const paintStore = require('./paint-store');

router.use('/paint-store', paintStore);

module.exports = router;
