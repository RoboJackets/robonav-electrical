#include "mbed.h"
#include "EthernetInterface.h"

#define ECHO_SERVER_PORT 7

int main(void)
{
    printf("setting up ethernet interface...\r\n");
    EthernetInterface eth;
    char *ip = "192.168.1.20";
    int res = eth.init(ip, 0, 0);
    eth.connect(1000);
    printf("result code is %d\r\n", res);
    printf("Server IP Address is: %s\r\n", eth.getIPAddress());

    TCPSocketServer server;
    server.bind(ECHO_SERVER_PORT);
    server.listen();

    while (true)
    {
        printf("Wait for new connection...\r\n");
        TCPSocketConnection client;
        server.accept(client);
        printf("accepted new client\r\n");
        client.set_blocking(false, 1500); // Timeout after (1.5)s

        printf("Connection from: %s\r\n", client.get_address());
        char buffer[256];
        while (true)
        {
            int n = client.receive(buffer, sizeof(buffer));
            if (n <= 0)
                break;

            // print received message to terminal
            buffer[n] = '\0';
            printf("Received message from Client :'%s'\r\n", buffer);

            // reverse the message
            char temp;
            for (int f = 0, l = n - 1; f < l; f++, l--)
            {
                temp = buffer[f];
                buffer[f] = buffer[l];
                buffer[l] = temp;
            }

            // print reversed message to terminal
            printf("Sending message to Client: '%s'\r\n", buffer);

            // Echo received message back to client
            client.send_all(buffer, n);
            if (n <= 0)
                break;
        }

        client.close();
    }
}