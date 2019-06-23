import axios from "axios";

export default {
  getAllColors: () => {
    return axios.get(`/paint-store`);
  },
  getVendorColors: vendorId => {
    return axios.get(`/paint-store/vendor/colors/${vendorId}`);
  },
  getAllVendors: () => {
    return axios.get(`/paint-store/vendors`);
  }
};
