uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
// uniform float uFrequency;
uniform vec2 uFrequency;

// uniform mat4 modelViewMatrix;  //shortened viewMatrix and modelMatrix;
uniform float uTime;

attribute vec3 position;
attribute vec2 uv;
// attribute float aRandom;

// varying float vRandom; //good practice to prefix with v for "varying"
varying vec2 vUv;

void main() {
  // gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);

  //writing this in longer form gives us more control over values
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);

  float elevation = sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
  elevation += sin(modelPosition.y * uFrequency.y - uTime) * 0.1;
  // modelPosition.z += sin(modelPosition.x * uFrequency) * 0.1;
  // modelPosition.z += aRandom * 0.1;
  //  modelPosition.z += sin(modelPosition.x * uFrequency.x + uTime) * 0.1;
  // modelPosition.z += sin(modelPosition.y * uFrequency.y + uTime) * 0.1;
  modelPosition.z += elevation;
  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;

  // vRandom = aRandom;
  vUv = uv;
  
  gl_Position = projectedPosition;
}