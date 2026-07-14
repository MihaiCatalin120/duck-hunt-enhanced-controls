package main

import "core:thread"

main :: proc() {
    init_server()
    thread.create_and_start(listen_and_process_connections)

    start_game()
}
