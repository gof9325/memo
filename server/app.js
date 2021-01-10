const express  = require('express'), app = express();

app.listen(3000, () => console.log("server 3000"));

// app.use(express.json);
// app.use(express.urlencoded({express : false}));

app.get('/', (req, res) => {
    res.json('hellow');
});