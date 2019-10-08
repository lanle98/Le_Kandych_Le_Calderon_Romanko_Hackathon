const express = require("express");
const path = require("path"); // path lets us navigate the firs system
const hbs = require("hbs"); // data bonding
const sql = require("./utils/sql");

// heroku assigns a port it deploys via process (environment variables - coming)
// locally this  run @ port 3000; remotley it'll
const port = process.env.PORT || 3000; //a double pipe - ||-  means or

const app = express();
app.use(express.static("public")); //css and js files
// tell express to use the handlebars engine to render data
app.set("view engine", "hbs");
// tell express to use the views folder to find its templates
app.set("views", __dirname + "/views");

app.get("/", (red, res) => {
  console.log("at the home route");

  res.render("thermostat");
  //res.sendFile(path.join(__dirname + '/views/index.html'));
});

app.get("/rooms", (red, res) => {
  console.log("room");

  res.render("room", {
    instruction: "Click on each room to see the temperature and light status"
  });
  //res.sendFile(path.join(__dirname + '/views/index.html'));
});

app.get("/security", (red, res) => {
  console.log("security");

  res.render("security", {
    instruction: "Click on each door to see if the door is locked or not"
  });
  //res.sendFile(path.join(__dirname + '/views/index.html'));
});

//get sql connection
sql.getConnection((err, connection) => {
  //create var for tables
  let roomName = "SELECT * FROM tbl_rooms";
  let securityName = "SELECT * FROM tbl_security";

  //fetching data from tbl_rooms
  sql.query(roomName, (err, rows) => {
    rows.forEach((e, index) => {
      app.get(`/${rows[index].Lowercase}`, (req, res) => {
        res.render("room", {
          temp: rows[index].Temperature,
          light: rows[index].Light
        });
      });
    });
  });

  //fetching data from tbl_security
  sql.query(securityName, (err, rows) => {
    connection.release();
    rows.forEach((e, index) => {
      app.get(`/${rows[index].Lowercase}`, (req, res) => {
        res.render("security", {
          description: rows[index].Description,
          status: `${rows[index].Status}`
        });
      });
    });
  });
});

app.listen(port, () => {
  console.log(`Server running at ${port}`);
});
