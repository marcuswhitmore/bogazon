// Dependencies
var mysql = require("mysql");
var inquirer = require("inquirer");

// Create connection to SQL Database

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "******",
    database: "bogazon_DB"
});



connection.connect(function(err) {
    if (err) throw err;
    start();
  
    
  });

  function start() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.table(res);
      
  
      inquirer.prompt([
        {
            name: "itemID",
            message: "Enter the ID of the product you would Like to Buy."
        },
        {
            name: "quantity",
            message: "How many are you wanting to buy?"
        }
     
    ]).then(function(answers){
        var chosenItem;
        for (var i = 0; i < res.length; i++) {
          if (res[i].product_id === parseInt(answers.itemID)) {
            chosenItem = res[i];
          }
         
        }
        
        if (chosenItem.quantity >= parseInt(answers.quantity)) {
             var newStock = chosenItem.quantity - parseInt(answers.quantity)
            
            connection.query(
              "UPDATE products SET ? WHERE ?",
              [
                {
                  quantity: newStock
                },
                {
                  product_id: chosenItem.product_id
                }
              ],
              function(err) {
                if (err) throw err;
                console.log("Purchase successful! new stock level is " + newStock + 
                ". \nYour order Total is "+ chosenItem.price*parseInt(answers.quantity));
              
              }
            );
          }else {
              console.log("Not enough quantity to fulfill the order.")
          }
          connection.end()


        
        
      
    })  })};