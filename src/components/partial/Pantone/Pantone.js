import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import { Card, CardContent, Typography } from "@material-ui/core";

const useStyles = makeStyles({
  card: {
    minWidth: 275,
    margin: 40
  },
  title: {
    fontSize: 22,
    fontWeight: "bolder",
    textAlign: "center",
    height: 40,
    marginBottom: 6,
    marginTop: 8
  }
});

export default function Pantone(props) {
  const classes = useStyles();

  return (
    <Card className={classes.card}>
      <CardContent
        style={{ height: "260px", backgroundColor: `#${props.color}` }}
      />
      <CardContent>
        <Typography className={classes.title}>{props.name}</Typography>
      </CardContent>
    </Card>
  );
}
