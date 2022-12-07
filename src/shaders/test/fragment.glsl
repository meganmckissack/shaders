precision mediump float;
uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vUv;
// varying float vRandom;
varying float vElevation;

void main() {
  // gl_FragColor = vec4(0.5, 0.0, 0.5, 0.5);  //r, g, b, alpha(if we want below 1, have to set transparent:true in RawShaderMaterial)
  // gl_FragColor = vec4(uColor, 1.0); 
  vec4 textureColor = texture2D(uTexture, vUv);
  gl_FragColor = textureColor;
  gl_FragColor = vec4(vUv, 1.0, 1.0);
  // vElevation = elevation;
}