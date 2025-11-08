import express from "express";
import cors from "cors";
import { ApiResponse } from "./api-response.js";

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

const profile = {
  id: 1,
  name: "John Doe",
  email: "johndoe@email.com",
};

app.post("/auth/login", (req, res) => {
  const { email, password } = req.body;

  if (!email || !password) {
    return ApiResponse.error(res, "Email and password required", 400);
  }

  if (email === "johndoe@email.com" && password === "123456") {
    return ApiResponse.success(
      res,
      {
        token: "ABC123",
        user: profile,
      },
      "Login Successful"
    );
  } else {
    return ApiResponse.error(res, "Unauthorized", 401);
  }
});

app.listen(PORT, () => {
  console.log(`Mock API running at http://localhost:${PORT}`);
});
