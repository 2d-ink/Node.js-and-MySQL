var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host:"localhost",
    port:3306, 
    user:"root", 
    password:"Formulad1", 
    database:"bamazon_db"
})

connection.connect(function(err){
    if(err) throw err;
    console.log("connection succesful!")
    makeTable();
})

var makeTable = function(){
    connection.query("SELECT * FROM products", function(err,res){
        for(var i=0; i<res.length; i++){
            console.log(res[i].itemid+" || "+res[i].productname+" || "+res[i].departmentname+" || "+res[i].price+" || "+res[i].stockquantity+"\n");
        }
        promoptCustomer(res);
    })
}

var promoptCustomer = function(res){
    inquirer.prompt([{
        type:"input", 
        name:"choice", 
        message:"what would you like to purhase? [Quit with Q]"
    }]).then(function(answer){
        var correct = false;
        if(answer.choice.toUpperCase()=="Q"){
            process.exit();
        }
        for (var i=0; i<res.length; i++){
            if(res[i].productname==answer.choice){
                correct=true; 
                var product = answer.choice;
                var id=i; 

                inquierer.prompt({
                    type:"input", 
                    name:"quant", 
                    message:"How many would you like to buy?",
                    validate: function(value){
                        if(isNaN(value)==false){
                            return true;
                        } else{
                            return false;
                        }
                    }

                }).then(function(answer){
                    if((res[id].stockquantity-answer.quant)>0){
                        connection.query("UPDATE proucts SET stock_quality='" + (res[id].stockquantity-answer.quant)+"' WHERE product_name'"+product +"'", function (err, res2){
                            console.log("Product Bought!");
                            makeTable();
                        })
                    }else {
                        console.log("Not a valid selection!");
                        promoptCustomer(res);
                    }
                })
            }
        }
        if(i==res.length && correct==false){
            console.log("Not a valid selection!");
            promoptCustomer(res); 
        }
    })
}