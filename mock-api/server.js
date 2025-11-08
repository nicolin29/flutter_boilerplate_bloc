import express from "express";
import cors from "cors";

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

// Example posts
const posts = [
  { id: "1", title: "a title", views: 100 },
  { id: "2", title: "another title", views: 200 },
];

// Example comments
const comments = [
  { id: "1", text: "a comment about post 1", postId: "1" },
  { id: "2", text: "another comment about post 1", postId: "1" },
];

// Example profile
const profile = { name: "typicode" };

// Routes with custom responses
app.get("/posts/:id", (req, res) => {
  const post = posts.find((p) => p.id === req.params.id);
  if (!post) return res.status(404).json({ message: "Post not found" });
  res.status(200).json(post);
});

app.get("/comments", (req, res) => {
  // Example: force error for testing
  const errorMode = req.query.error;
  if (errorMode === "500")
    return res.status(500).json({ message: "Server error" });
  res.status(200).json(comments);
});

app.get("/profile", (req, res) => {
  // Example: force unauthorized
  const auth = req.headers.authorization;
  if (!auth) return res.status(401).json({ message: "Unauthorized" });
  res.status(200).json(profile);
});

app.listen(PORT, () => {
  console.log(`Mock API running at http://localhost:${PORT}`);
});
