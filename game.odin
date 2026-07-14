package main

import rl "vendor:raylib"

Orientation_Data :: struct {
    x, y, z: f32,
}

init :: proc() {
    rl.InitWindow(800, 600, "Duck Hunt Accelerated")
}

compute :: proc() {

}

draw :: proc() {
    rl.BeginDrawing()
    rl.ClearBackground(rl.GRAY)

    rl.EndDrawing()
}

update :: proc() {
    for !rl.WindowShouldClose() {
        compute()
        draw()
    }
}

end :: proc() {
    rl.CloseWindow()
}

start_game :: proc() {
    init()
    update()
    end()
}

