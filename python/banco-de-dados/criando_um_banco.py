import psycopg2
from psycopg2 import sql

# Configurações de conexão ao PostgreSQL
conn_info = {
    "host": "localhost",
    "port": 5432, 
    "user": "postgres",
    "password": "masterkey",
    "dbname": "postgres" # conecto no banco de dados padrão para criar um novo
}

db_name = "carros_db" # Nome do banco de dados a ser criado
table_name = "carros" # Nome da tabela a ser criada

try:
    # Conectar ao PostgreSQL
    conn = psycopg2.connect(**conn_info)
    conn.autocommit = True
    cur = conn.cursor()

    # CRIANDO O BANCO
    # Verificar se o banco de dados já existe
    cur.execute("SELECT 1 FROM pg_database WHERE datname = %s", (db_name,))
    if cur.fetchone():
        print(f"O banco de dados '{db_name}' já existe.")
    else:
        # Cria o banco de dados se ele não existir
        cur.execute(sql.SQL("CREATE DATABASE {}").format(sql.Identifier(db_name)))
        print(f"Banco de dados '{db_name}' criado com sucesso.")
finally:
    # Fechar a conexão e o cursor
    cur.close()
    conn.close()



# CRIANDO A TABELA
conn_info['dbname'] = "carros_db"

try:
    # Conectar ao banco de dados "carros"
    conn = psycopg2.connect(**conn_info)
    conn.autocommit = True
    cur = conn.cursor()

    # Verificar se a tabela já existe
    cur.execute("""
        SELECT EXISTS (
            SELECT FROM information_schema.tables 
            WHERE table_name = %s
        );
    """, (table_name,))
    table_exists = cur.fetchone()[0]

    if table_exists:
        print(f"A tabela '{table_name}' já existe.")
    else:
        # Criar a tabela com as colunas especificadas
        cur.execute(sql.SQL("""
            CREATE TABLE {} (
                id SERIAL PRIMARY KEY,
                marca VARCHAR(50) NOT NULL,
                modelo VARCHAR(50) NOT NULL,
                ano INTEGER NOT NULL CHECK (ano > 1885),
                cor VARCHAR(20),
                preco NUMERIC(10, 2) CHECK (preco >= 0)
            );
        """).format(sql.Identifier(table_name)))
        
        print(f"Tabela '{table_name}' criada com sucesso.")

except psycopg2.Error as e:
    print(f"Erro ao criar/verificar a tabela: {e}")
finally:
    # Fechar a conexão e o cursor
    cur.close()
    conn.close()