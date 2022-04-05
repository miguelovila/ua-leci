import sqlite3, sys

def main(argv):
    db = sqlite3.connect(argv[1])
    
    # Busca todos os registos de uma só vez
    result = db.execute('SELECT * FROM contacts')
    for row in result.fetchall():
        print(row)

    # Busca todos os registos um a um (ótimo para muitos registos)
    result = db.execute('SELECT * FROM contacts')
    while True:
        row = result.fetchone()
        if row is None:
            break
        print(row)

    # Busca todos os registos um a um como um iterador
    result = db.execute('SELECT * FROM contacts')
    for row in result:
        print(row)

    # Busca os nomes de todos os registos e diz quantos existem
    result = db.execute('SELECT firstname FROM contacts ORDER BY firstname ASC;')
    n = 0
    for row in result:
        print(row[0])
        n += 1
    print(n, "contactos")

    # Busca as empresas disponiíveis
    company_dict = {}
    result = db.execute('SELECT * FROM companies')
    for row in result:
        company_dict[row[0]] = row[1]

    # Buscar por um registo específico pelo seu nome
    nome = input("Pesquisar pelo nome: ") + "%" # % no final pq interessa o início
    result = db.execute('SELECT * FROM contacts WHERE firstname LIKE ? OR middlename LIKE ? OR lastname LIKE ?', (nome, nome, nome,))
    for row in result:
        print(row[1], row[2], row[3], "              Empresa: ", company_dict[row[6]])

    db.close()

main(sys.argv)