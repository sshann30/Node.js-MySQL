// Challenge #1: Customer View (Minimum Requirement)


// The app should then prompt users with two messages.
// The first should ask them the ID of the product they would like to buy.
// The second message should ask how many units of the product they would like to buy.
// Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.
// If not, the app should log a phrase like Insufficient quantity!, and then prevent the order from going through.
// However, if your store does have enough of the product, you should fulfill the customer's order.
// This means updating the SQL database to reflect the remaining quantity.
// Once the update goes through, show the customer the total cost of their purchase.

var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
    host: "localhost",
    // Your port; if not 3306
    port: 3306,
    // Your username
    user: "root",
    // Your password
    password: "root",
    database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    // console.log("connected as id" + database)
    //   run the chooseProduct function after the connection is made to prompt the user
    first();
});

// they can now choose a product

function first() {
    connection.query("SELECT * FROM products", function(err, res){
        if (err) throw err;
        console.table(res)
    
    });
    };


// another finction for actually selecting the item
function chooseProduct() {
    inquirer
        .prompt({
            name: "order something",
            type: 'checkbox',
            message: "What would you like to order?",
            validate: function (value) {
                if (isNaN(value) === false) {
                    return true;
                };
                return false;
            }
            //   choices: ["How to connect list of choices from csv or schema??"]
        })


inquirer
    .prompt([{
            name: "choice",
            type: 'checkbox',
            message: "What is the number associated with Steve's Product you want to buy?\n",
            choices: function () {
                var whatsForSale = [];
                for (var i = 0; i < res.length; i++) {
                    whatsForSale.push(res[i].name);
                }
                return whatsForSale;
            }},
        {
            name: "theAmountofStevesStuff",
            type: 'checkbox',
            message: "How many of Steve's Stuff would you like to buy?",
            validate: function (value) {
                if (isNaN(value) === false) {
                    return true;
                };
                return false;
            }
        }])


    .then(function (answer) {
        //run table of all data about Steve's product
        var iChooseYou;
        for (var i = 0; i < res.length; i++) {
            if (res[i].name === answer.choice) {
                iChooseYou = res[i];
            }};

        if (iChooseYou.stock_quantity >= parseInt(answer.theAmountofStevesStuff)) {
            connection.query(
                "UPDATE products SET ? WHERE ?",
                [{ stock_quantity: (iChooseYou.stock_quantity - answer.theAmountofStevesStuff) },
                { item_id: iChooseYou.item_id }
                ],

                function (err, res) {
                    if (err) throw err;

                    console.log((iChooseYou.price * answer.theAmountofStevesStuff) + "\n")
                    console.log("Thank you for ordering something from Steve")

                    connection.end();
                });
        } else {
            console.log("Steve apologizes. We don't have enough of that product in stock right now")
            chooseProduct();
            // i want to learn how to put this all into html so badly
            // so i can alert them that i don't have enough of an item instead of console logging it
        }
    });
//   });
// };ba

// Steves-MBP-5:Node.js-MySQL sshann30$ node bamazonManager.js
// Steves-MBP-5:Node.js-MySQL sshann30$
// aaaaaaand nothing happens... linkage issue? schema vs csv????

//10 o'clock and for some reason this is waht comes up in bash even after deleting previous bash trick like adam taught me
// Steves-MBP-5:Node.js-MySQL sshann30$ node bamazon
// bamazonManager.js  bamazon_db.sql
// Steves-MBP-5:Node.js-MySQL sshann30$ node bamazon

// why can't it auto complete after i press C to signify "Customer.js"???
// throw err: ????
// Steves-MBP-5:Node.js-MySQL sshann30$ node bamazonCustomer.js
// internal/modules/cjs/loader.js:605
//     throw err;
//     ^
}