from get_elements import get_environment
from robot import run_cli
import sys

if __name__ == "__main__":
    # Ambiente padrão
    environment = get_environment()
    
    # Obtém o ambiente da linha de comando, se fornecido
    for i, arg in enumerate(sys.argv):
        if arg == "--variable" and i + 1 < len(sys.argv):
            key_value = sys.argv[i + 1]
            if key_value.startswith("ENVIRONMENT:"):
                environment = key_value.split(":")[1]
                break

    # Executa os testes apenas se o script for executado diretamente
    result = run_cli(["-d", "../results", "--variablefile", "../data/environments.yaml", "--variable", f"ENVIRONMENT:{environment}", "--variable", f"env:{environment}","."])
    sys.exit(result)