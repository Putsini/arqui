#new user

require 'socket' 

#verificar parametros
if ARGV.size != 2
    p "<port> <host>"
    return 1
end

hostname = ARGV[1]
port = ARGV[0]

#conectar
sock= Socket.new Socket::AF_INET, Socket::SOCK_STREAM
sock.connect Socket.pack_sockaddr_in(port, hostname)

#esperar instruccion
loop do
    inst = sock.rcv(2048)
    if inst == nil
        sleep(3) #dormir por 3 segundos
    else
        #DO SHIT
    end
end