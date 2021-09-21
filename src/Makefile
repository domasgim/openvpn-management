.PHONY:all clean

all:openvpn-management

openvpn-management: main.c
	$(CC) -o $@ $^ -lblobmsg_json -lubox -lubus

clean:
	rm -rf openvpn-management