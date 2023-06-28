# Custom AI Chatbot with GPT-4 and Custom Knowledge Base

This project is a Python application that leverages the power of GPT-4, the cutting-edge language model developed by OpenAI, to build a conversational AI Chatbot. The unique aspect of this chatbot is its ability to utilize a set of documents as a Custom Knowledge Base, allowing it to provide more context-aware responses.

The chatbot is served through a web interface powered by Gradio, which provides a user-friendly way to interact with the model.

## How it Works

The application uses the `GPTListIndex` and `GPTSimpleVectorIndex` classes from the `gpt_index` library to generate a searchable semantic index of the documents, stored as `index.json`.

When a user enters a prompt, the system:
1. Converts the input prompt into a semantic vector representation, similar to the representations of the indexed documents.
2. Identifies the document(s) in the index that are most semantically similar to the input prompt.
3. Uses the GPT-4 model to generate a response based on the content of the most similar document(s).

Please note that the `index.json` is a local resource. The application does not send its entire content to the GPT-4 API during the conversation. It merely serves as a means of identifying relevant document context within the local environment.

## Getting Started

Follow the instructions below to get the chatbot up and running:

1. Ensure you have the latest version of pip installed:

```
pip3 install --upgrade pip
```

2. Place your PDF documents in the `docs` directory. These will serve as your Custom Knowledge Base.

3. Install the necessary Python libraries (MacOS):

```
pip3 install openai
pip3 install gpt_index==0.4.24
pip3 install langchain==0.0.118
pip3 install PyPDF2
pip3 install PyCryptodome
pip3 install gradio
```


4. Once all the dependencies are installed, you can run the bot:

```
python3 bot.py
```


You should now be able to interact with your AI chatbot through the Gradio web interface!

## Containerization
`docker build -t kb-predictor .`
`docker run -p 7860:7860 kb-predictor`
`docker run -e OPENAI_API_KEY=your_api_key -p 7860:7860 kb-predictor`


## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

If you have any questions or would like to contribute, please [open an issue](https://github.com/claudiotx/custom-kb-chatbot/issues) or submit a pull request.
