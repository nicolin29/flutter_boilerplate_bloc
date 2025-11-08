import express from "express";
import cors from "cors";

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

const profile = {
  id: 1,
  name: "John Doe",
  email: "johndoe@email.com",
};

app.post("/login", (req, res) => {
  const { email, password } = req.body;

  if (!email || !password) {
    return res.status(400).json({ message: "Email and password required" });
  }

  if (email === "johndoe@email.com" && password === "123456") {
    return res.status(200).json({
      status: "success",
      message: "Login Successful",
      data: {
        token: "ABC123",
        user: profile,
      },
    });
  } else {
    return res.status(401).json({ message: "Unauthorized" });
  }
});

app.listen(PORT, () => {
  console.log(`Mock API running at http://localhost:${PORT}`);
});
