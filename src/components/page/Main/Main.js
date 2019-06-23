import React, { Component } from "react";
import { Divider, Button, CircularProgress } from "@material-ui/core";
import { withStyles } from "@material-ui/core/styles";
import Select from "react-select";

import Pantone from "../../partial/Pantone";
import API from "../../../api/paintAPI";

const styles = theme => ({
  root: {
    flexGrow: 1,
    marginBottom: 150
  },
  select: {
    width: 400,
    marginTop: theme.spacing.unit * 4,
    marginBottom: theme.spacing.unit * 4,
    justifyContent: "center",
    display: "block",
    marginLeft: "auto",
    marginRight: "auto"
  },
  button: {
    margin: theme.spacing(1),
    justifyContent: "center",
    display: "block",
    marginLeft: "auto",
    marginRight: "auto"
  },
  pantoneContainer: {
    display: "flex",
    flexWrap: "wrap",
    minWidth: 300,
    width: "80%",
    justifyContent: "center",
    marginTop: theme.spacing.unit * 4,
    marginLeft: theme.spacing.unit * 20
  }
});

class Main extends Component {
  state = {
    vendors: [],
    colors: [],
    currentVendor: null,
    currentVendorName: null,
    currentVendorId: null,
    loading: false
  };

  handleVendorChange = currentVendor => {
    this.setState(
      {
        currentVendor: currentVendor,
        currentVendorName: currentVendor.name,
        currentVendorId: currentVendor.id,
        loading: true
      },
      () => {
        if (this.state.currentVendor) {
          API.getVendorColors(this.state.currentVendorId)
            .then(res => {
              this.setState({
                colors: res.data,
                loading: false
              });
            })
            .catch(err => console.log(err));
        }
      }
    );
  };

  getAllColors = () => {
    this.setState(
      {
        loading: true
      },
      () => {
        API.getAllColors()
          .then(res => {
            this.setState({
              colors: res.data,
              loading: false
            });
          })
          .catch(err => console.log(err));
      }
    );
  };

  componentDidMount() {
    API.getAllVendors()
      .then(res => {
        this.setState({
          vendors: res.data
        });
      })
      .catch(err => console.log(err));
  }

  render() {
    const { classes } = this.props;
    return (
      <div className={classes.root}>
        <Select
          className={classes.select}
          onChange={this.handleVendorChange}
          options={this.state.vendors}
          placeholder="Select Vendor"
          getOptionLabel={option => option.name}
          getOptionValue={option => option.id}
          value={this.state.currentVendor}
          isSearchable
        />
        <Button
          color="primary"
          onClick={this.getAllColors}
          className={classes.button}
        >
          Display Colors From All Vendors
        </Button>
        <Divider variant="middle" />
        <div className={classes.pantoneContainer}>
          {this.state.loading === true ? (
            <CircularProgress />
          ) : (
            this.state.colors.map(color => {
              return <Pantone name={color.name} color={color.hex} />;
            })
          )}
        </div>
      </div>
    );
  }
}

export default withStyles(styles)(Main);
