const router = require("express").Router();
const paintController = require("../controllers/paintStore");

//matches with /paint-store
router.route("/").get(paintController.getAll);

router.route("/vendor/colors/:vendorId").get(paintController.getVendorColors);

router.route("/vendors").get(paintController.getVendorName);

module.exports = router;
