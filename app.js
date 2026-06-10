const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
    res.json({
        status: "success",
        message: "Hello World! CI/CD Pipeline is working perfectly.",
        timestamp: new Date()
    });
});

app.listen(PORT, () => {
    console.log(`Application is running on port ${PORT}`);
});
