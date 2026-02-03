import socket
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(('0.0.0.0',12))
server.listen(5)
print("[*]嘘，黑店开张了")
while True:
    client,addr = server.accept()
    print(f"\n[+]抓到了ip={addr[0]}从{addr[1]}来")
    client.send(b"WELCOME TO SECURE SHELL .POEASE ENTER YOUR ROOT PASSWARD,THANKS")
    date = client.recv(1024) 
    print(f"[*]密码：{date.decode('utf-8',errors='ignore')}")
    client.close()

