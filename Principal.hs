-- Declaramos aqui o tipo "Data"
type Data = (Int, Int, Int)

-- Declaramos aqui o tipo "Cliente"
type Cliente = (String, Int, String)

-- Declaramos aqui o tipo "Pedido"
type Pedido = (Int, Cliente, Float, Data, Data)

-- Declaramos algumas funcões uteis
retornaNumero :: Pedido -> Int
retornaNumero (a, _, _, _, _) = a

retornaCliente :: Pedido -> Cliente
retornaCliente (_, b, _, _, _) = b

retornaPreco :: Pedido -> Float
retornaPreco (_, _, c, _, _) = c

retornaDataPedido :: Pedido -> Data
retornaDataPedido (_, _, _, d, _) = d

retornaDataEntrega :: Pedido -> Data
retornaDataEntrega (_ ,_ ,_ , _, e) = e

retornaDia :: Data -> Int
retornaDia (a, _, _) = a

retornaMes :: Data -> Int
retornaMes (_, b, _) = b

retornaAno :: Data -> Int
retornaAno (_, _, c) = c

entregueNaData :: Data -> Data -> Bool
entregueNaData a b = if a == b then True else False

-- Alguns itens pedidos
cliente1 :: Cliente
cliente1 = ("Fulano", 9999, "Rua A")

cliente2 :: Cliente
cliente2 = ("Ciclano", 8888, "Rua B")

pedido1 :: Pedido
pedido1 = (1, cliente1, 500, (19, 9, 2021), (20, 9, 2021))

pedido2 :: Pedido
pedido2 = (2, cliente2, 500, (19, 9, 2021), (11, 10, 2021))