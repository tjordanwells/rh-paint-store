const db = require('../models');

module.exports = {
  getAll: (req, res) => {
    let queryString = 'SELECT * FROM `ColorLibrary`';

    db.query(queryString, (error, results) => {
        if (error) {
        return res.json(error);
        }
        res.json(results);
    });
  },
  getColorName: (req, res) => {
    let queryString = 'SELECT * FROM `ColorLibrary` WHERE name = ?';
    let color = req.params.name;
    console.log(color);

    db.query(queryString, color, (error, results) => {
      if (error) {
        res.json(error);
        console.log(error);
      }
      res.json(results);
    });
  },
  getHex: (req, res) => {
    let queryString = 'SELECT * FROM `ColorLibrary` WHERE hex = ?';
    let hex = req.params.hex;
    console.log(hex);

    db.query(queryString, hex, (error, results) => {
      if (error) {
        res.json(error);
      }
      res.json(results);
    });
  },
  getVendor: (req, res) => {
    let queryString = 'SELECT * FROM `ColorLibrary` WHERE vendorId = ?';
    let vendor = req.params.vendorId;
    console.log(vendor);

    db.query(queryString, vendor, (error, results) => {
      if (error) {
        res.json(error);
      }
      res.json(results);
    });
  },
  getVendorName: (req, res) => {
    let queryString = 'SELECT * FROM `ColorLibVendor`';

    db.query(queryString, (error, results) => {
      if (error) {
        res.json(error);
      }
      res.json(results);
    });
  }
}