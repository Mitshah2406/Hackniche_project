const express = require("express");
const { GoogleGenerativeAI } = require("@google/generative-ai");
const fs = require("fs");
const util = require("util");

const geminiApp = express();
const port = 3000; // Set your desired port number

geminiApp.use(express.json());

const genAI = new GoogleGenerativeAI("AIzaSyBC3Vt5GoTwLey49cJwCKDwyeDInirQ4ic");

function fileToGenerativePart(path, mimeType) {
  return {
    inlineData: {
      data: Buffer.from(fs.readFileSync(path)).toString("base64"),
      mimeType,
    },
  };
}

geminiApp.post("/generate-caption", async (req, res) => {
  try {
    const { imagePath } = req.body;
    const model = genAI.getGenerativeModel({ model: "gemini-pro-vision" });
    const prompt = "Suggest me caption for this image";

    const imageParts = [fileToGenerativePart(imagePath, "image/png")];

    const result = await model.generateContent([prompt, ...imageParts]);
    const response = await result.response;
    const text = await response.text();

    res.json({ caption: text });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

module.exports = geminiApp;
