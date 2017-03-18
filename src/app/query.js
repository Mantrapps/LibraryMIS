var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '1qaz@WSX',
  database : 'Library'
});

module.exports.queryB= function queryBook(queryString, callback){
  try {
    connection.connect();
    connection.query('SELECT * from BOOK limit 20', function (err, rows, fields) {
      if (!err) {
        res = [];
        for (i = 0; i < rows.length; i++) {
           res.push([rows[i]['id'],rows[i]['Title']]);
          //console.log(rows[i]['Authors']);
        }
      }
      //console.log('The solution is: ', rows[1]['Authors']);
      else
        console.log('Error while performing Query.');
      callback(res);
      //return res;
    });
    connection.end();
  }
  catch (ex){
    console.log("Exception: "+ ex);
  }
};
