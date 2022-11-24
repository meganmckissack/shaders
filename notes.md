#### Two types of shaders
1 - Vertext shader - The vertex shader's purpose is to position the vertices of the geometry. The idea is to send the vertices positions, the mesh transformations (like its position, rotation, and scale), the camera information (like its position, rotation, and field of view). Then, the GPU will follow the instructions in the vertex shader to process all of this information in order to project the vertices on a 2D space that will become our render —in other words, our canvas. The vertex shader happens first. Once the vertices are placed, the GPU knows what pixels of the geometry are visible and can proceed to the fragment shader.


2 - Fragement shader - The fragment shader purpose is to color each visible fragment of the geometry.

_The fragment shader is executed after the vertex shader._

_Data that changes between each vertices (like their position) is called attribute and can only be used in the vertex shader._

_Data that doesn't change between vertices (like the mesh position or a color) is called uniform and can be use in both the vertex shader and the fragment shader._

_We can send data from the vertex shader to the fragment shader using varying._

glsl requires types for variables - float, int, bool

vec2 - store values like two coordinates(x, y) properties
- vec2 foo = vec2(1.0, 2.0);
- multiplication etc operates on both properties

vec3 - store three properties like (x, y, z) or (r, g, b)
- vec3 bar = vec3(1.0, 2.0, 3.0);

can write functions 
```
  float loremIpsum()
{
    float a = 1.0;
    float b = 2.0;

    return a + b;
}
```

If the function isn't supposed to return anything, we set the type to void:
```
void justDoingStuff()
{
    float a = 1.0;
    float b = 2.0;
}
```

We can specify parameters, but we also have to provide their type:
```
float add(float a, float b)
{
    return a + b;
}
```