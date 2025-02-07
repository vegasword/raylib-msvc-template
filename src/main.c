#include "raylib.h"

int main()
{
  InitWindow(800, 600, "It just works!");
  
  while (!WindowShouldClose())
  {
    BeginDrawing();
    ClearBackground(RAYWHITE);
    DrawText("It just works!", 20, 20, 20, BLACK);
    EndDrawing();
  }
  
  CloseWindow();
  return 0;
}
