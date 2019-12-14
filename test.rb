require 'pg'

conn = PGconn.open(:host => 'localhost',:dbname => 'test',:password => 'lux291')

res  = conn.exec('SELECT * FROM prueba')