package main

import "core:net"
import "core:fmt"

buf: [1024]u8
socket: net.UDP_Socket

init_server :: proc() {
    addr := net.Endpoint{
        address = net.IP4_Address{0, 0, 0, 0},
        port    = 9000,
    }

    local_socket, err := net.make_bound_udp_socket(addr.address, addr.port)
    if err != nil {
        fmt.println("ERROR: Could not bind socket: %v", err)
        return
    }

    socket = local_socket
}

listen_and_process_connections :: proc() {
    for {
        bytes_read, remote_endpoint, recv_err := net.recv_udp(socket, buf[:])
        if (recv_err != nil) {
            fmt.println("ERROR: Could not receive packet")
            continue
        }

        fmt.println("INFO: Receive success - %d", bytes_read)

        //TODO(mihai): Read and process data
        data := Orientation_Data{}

        //https://sensors2.org/osc/#toc-entry-2
    }
}
