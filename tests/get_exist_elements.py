# get_exist_elements.py

file_name_variable = ""

def Set_File_Name_Variable(file_name):
    global file_name_variable
    file_name_variable = file_name
    print(f"File Name Variable: {file_name_variable}")
    return file_name_variable

# Exemplo de uso
file_name_variable = Set_File_Name_Variable("example_file.yaml")

# Verificando se o valor foi recebido
print(f"Value received: {file_name_variable}")