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

const articles = [
  {
    id: 1,
    title: "Article 1",
    content: "This is the content of Article 1",
    image: "https://picsum.photos/id/1011/600/400",
  },
  {
    id: 2,
    title: "Article 2",
    content: "This is the content of Article 2",
    image: "https://picsum.photos/id/1012/600/400",
  },
  {
    id: 3,
    title: "Article 3",
    content: "This is the content of Article 3",
    image: "https://picsum.photos/id/1013/600/400",
  },
];

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

app.get("/articles", (req, res) => {
  return ApiResponse.success(
    res,
    articles.map((a) => ({ id: a.id, title: a.title, image: a.image })),
    "Fetched Successfully"
  );
});

app.get("/articles/:id", (req, res) => {
  const article = articles.find((a) => a.id === parseInt(req.params.id));
  if (!article) return ApiResponse.error(res, "Article not found", 404);
  return ApiResponse.success(res, article, "Fetched Successfully");
});

app.listen(PORT, () => {
  console.log(`Mock API running at http://localhost:${PORT}`);
});
