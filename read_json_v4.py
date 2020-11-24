import glob, psycopg2, os, json
from psycopg2.extras import Json

postgres_param_connect = "host=localhost dbname=extrator_validacao user=postgres password=postgres port=5433" 

def insert_postgresql(json_data):
    
    colunas = json_data.keys()
    colunas = [str(col).lower() for col in colunas]
    
    variaveis = json_data.keys()
    variaveis = ['%s' for val in variaveis]
    
    valores = json_data.values()
    valores = [str(val) for val in valores]
    
    for i,col in enumerate(colunas):

        if col == 'gastocampanha1t':
           if valores[i].isnumeric() == False:
              valores[i] = 0
        if col == 'gastocampanha2t':
           if valores[i].isnumeric() == False:
              valores[i] = 0
        if col == 'totaldebens':
           if valores[i].isnumeric() == False:
              valores[i] = 0
        if col == 'gastocampanha':
           if valores[i].isnumeric() == False:
              valores[i] = 0
        if col == 'bens':
           valores[i] = json.dumps(valores[i])
        if col == 'cargo':
           valores[i] = json.dumps(valores[i])
        if col == 'vices':    
           valores[i] = json.dumps(valores[i])
        if col == 'partido':    
           valores[i] = json.dumps(valores[i])
        if col == 'eleicao':    
           valores[i] = json.dumps(valores[i])
        if col == 'emails':    
           valores[i] = json.dumps(valores[i])
        if col == 'sites':    
           valores[i] = json.dumps(valores[i])
        if col == 'arquivos':    
           valores[i] = json.dumps(valores[i])
        if col == 'eleicoesanteriores': 
           valores[i] = json.dumps(valores[i])

    sql = "INSERT INTO public.tabela (" + ', '.join(colunas) + ") \nVALUES (" + ', '.join(variaveis) + ")"
    
    conn = psycopg2.connect(postgres_param_connect)
    cur = conn.cursor()

    cur.execute(sql, valores)
    
    conn.commit()
    cur.close()
    conn.close()

def monta_insert( arquivo ):
    with open(arquivo, encoding='utf-8-sig') as json_file:
        json_data = json.load(json_file)
        insert_postgresql(json_data)
   
def main():
    path_padrao = "D:\\candidatos\\"    
    
    if os.path.exists(path_padrao):
        for nome_arquivo in glob.iglob(path_padrao + '*.json', recursive=True):
            print("Arquivo: " + nome_arquivo)
            monta_insert(nome_arquivo)

if __name__ == '__main__':
    
    main()
