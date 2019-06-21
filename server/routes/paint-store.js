const router = require('express').Router();
const paintController = require('../controllers/paintStore');

//matches with /paint-store
router.route('/')
  .get(paintController.getAll);

router.route('/name/:name')
  .get(paintController.getColorName);

router.route('/hex/:hex')
  .get(paintController.getHex);

router.route('/vendor/:vendorId')
  .get(paintController.getVendor);

router.route('/vendor-name')
  .get(paintController.getVendorName);

module.exports = router;
