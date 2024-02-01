# get_elements.py
import argparse

def get_environment():
    parser = argparse.ArgumentParser()
    parser.add_argument("--env", default="default")
    args = parser.parse_args()

    print(f"Valor da variável env recebido: {args.env}")
    return args.env

# Adicionando este bloco para imprimir quando executado diretamente
if __name__ == "__main__":
    env_value = get_environment()
    print(f"Valor da variável env: {env_value}")