
// let check = "welcome nodejs 48";
// console.log(check);
// import thư viện express
import express from 'express';

// khởi tạo ứng dụng express
const app = express();

// khai báo API đơn giản
// param 1: đường dẫn API, kiểu string
// param 2: function xử lý API
// domain default của BE: http://localhost:3000
// =>  http://localhost:3000
// req: nhận yêu cầu từ client (front end, postman,...)
// res: trả về kết quả cho client

app.get('/', (req, res) => {
    res.send("Welcome to nodejs 48");
});

app.get("/test", (req, res) => {
    res.send("Test ApI")

})

// để BE luôn có code mới thì cài thư viện nodemon ==> npm i nodemon

// khai báo port mặc định cho backend 
const port = 3000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);

});







