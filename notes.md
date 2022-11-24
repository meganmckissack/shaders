#### Two types of shaders
1 - Vertext shader - The vertex shader's purpose is to position the vertices of the geometry. The idea is to send the vertices positions, the mesh transformations (like its position, rotation, and scale), the camera information (like its position, rotation, and field of view). Then, the GPU will follow the instructions in the vertex shader to process all of this information in order to project the vertices on a 2D space that will become our render —in other words, our canvas. The vertex shader happens first. Once the vertices are placed, the GPU knows what pixels of the geometry are visible and can proceed to the fragment shader.


2 - Fragement shader - The fragment shader purpose is to color each visible fragment of the geometry.

_The fragment shader is executed after the vertex shader._

_Data that changes between each vertices (like their position) is called attribute and can only be used in the vertex shader._

_Data that doesn't change between vertices (like the mesh position or a color) is called uniform and can be use in both the vertex shader and the fragment shader._

_We can send data from the vertex shader to the fragment shader using varying._


