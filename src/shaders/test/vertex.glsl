uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
// uniform mat4 modelViewMatrix;  //shortened viewMatrix and modelMatrix;

attribute vec3 position;
// attribute float aRandom;

// varying float vRandom; //good practice to prefix with v for "varying"

void main() {
  // gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);

  //writing this in longer form gives us more control over values
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  modelPosition.z += sin(modelPosition.x * 10.0) * 0.1;
  // modelPosition.z += aRandom * 0.1;
  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;

  // vRandom = aRandom;

  gl_Position = projectedPosition;
}