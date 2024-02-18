const { GoogleGenerativeAI } = require("@google/generative-ai");
const genAI = new GoogleGenerativeAI("AIzaSyArlkqNreM1uyr1Tqw0ZzK3b4k-EWBAYog");

async function run() {
    // For text-only input, use the gemini-pro model
    const model = genAI.getGenerativeModel({ model: "gemini-pro" });

    const prompt = "essay on AI"

    const result = await model.generateContent(prompt);
    const response = result.response;
    const text = response.text();
    console.log(text);
}

run();