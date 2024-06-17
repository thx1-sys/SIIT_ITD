import openai

openai.api_key = ""

def chat_with_gpt3(prompt):
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[{
            "role": "system",
            "content": "This is your assistant"
        }, {
            "role": "user",
            "content": prompt
        }]
    )
    return response['choices'][0]['message']['content']

if __name__ == "__main__":
    while True:
        user_input = input("You: ")
        if user_input.lower() in ["exit", "quit"]:
            break
        response = chat_with_gpt3(user_input)
        print(f"AI: {response}")