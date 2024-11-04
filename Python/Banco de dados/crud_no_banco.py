import psycopg2
from psycopg2 import sql

# Criando um class com o CRUD na tabela carros
class CarrosCRUD:
    def __init__(self, conn_info):
        self.conn_info = conn_info
    
    def connect(self):
        return psycopg2.connect(**self.conn_info)
    
    # CREATE - Adicionar um novo carro
    def create_car(self, marca, modelo, ano, cor, preco):
        with self.connect() as conn:
            with conn.cursor() as cur:
                cur.execute("""
                    INSERT INTO carros (marca, modelo, ano, cor, preco)
                    VALUES (%s, %s, %s, %s, %s) RETURNING id;
                """, (marca, modelo, ano, cor, preco))
                new_id = cur.fetchone()[0]
                print(f"Carro inserido com ID: {new_id}")

    # READ - Obter todos os carros
    def read_cars(self):
        with self.connect() as conn:
            with conn.cursor() as cur:
                cur.execute("SELECT * FROM carros;")
                cars = cur.fetchall()
                for car in cars:
                    print(car)

    # # UPDATE - Atualizar um carro pelo ID
    def update_car(self, car_id, marca=None, modelo=None, ano=None, cor=None, preco=None):
        with self.connect() as conn:
            with conn.cursor() as cur:
                # Preparar os campos para atualização
                fields = {"marca": marca, "modelo": modelo, "ano": ano, "cor": cor, "preco": preco}
                updates = {k: v for k, v in fields.items() if v is not None}
                
                # Construir a cláusula SET dinamicamente
                set_clause = ", ".join(f"{key} = %s" for key in updates.keys())
                values = list(updates.values()) + [car_id]
                
                cur.execute(sql.SQL(f"UPDATE carros SET {set_clause} WHERE id = %s"), values)
                print(f"Carro com ID {car_id} atualizado com sucesso.")

    # DELETE - Remover um carro pelo ID
    def delete_car(self, car_id):
        with self.connect() as conn:
            with conn.cursor() as cur:
                cur.execute("DELETE FROM carros WHERE id = %s", (car_id,))
                print(f"Carro com ID {car_id} removido com sucesso.")

conn_info = {
    "host": "localhost",
    "port": 5432,
    "user": "seu_usuario",   
    "password": "sua_senha", 
    "dbname": "carros"
}

# Consumindo essa class
# Inicializando o CRUD para a tabela 'carros'
crud = CarrosCRUD(conn_info)

# CREATE: Inserindo um novo carro
crud.create_car("Ford", "Fiesta", 2018, "Vermelho", 45000.00)

# READ: Consultando todos os carros
# crud.read_cars()

# UPDATE: Atualizando um carro pelo ID
# crud.update_car(1, preco=43000.00)

# # DELETE: Removendo um carro pelo ID
# crud.delete_car(1)