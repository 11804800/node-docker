const express=require("express");
const app=new express();
const path=require('path');


app.use(express.json());
app.set("views",path.join(__dirname,"views"));
app.set("view engine","ejs");

app.get("/",(req,res)=>{
    res.render("index");
});

app.listen("3000",()=>{
    console.log("Up and Running at 3000");
});