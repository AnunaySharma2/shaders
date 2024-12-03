varying vec2 vUv;

float random(vec2 st){
    return fract(sin(dot(st.xy, vec2(12.9898,78.233)))* 43758.5453123);
}

vec2 rotate(vec2 uv, float rotation, vec2 mid){
    float s = sin(rotation);
    float c = cos(rotation);
    uv -= mid;
    uv = vec2(uv.x * c - uv.y * s, uv.x * s + uv.y * c);
    uv += mid;
    return uv;
}

void main()
{
    // Pattern 1
    // gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);

    // Pattern 2
    // gl_FragColor = vec4(vUv.x, vUv.y, 0.0, 1.0);

    // Pattern 3
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);

    // Pattern 4 
    // float strength = vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 5
    // gl_FragColor = 1.0 - vec4(vUv.y, vUv.y, vUv.y, 1.0);

    // Pattern 6
    // gl_FragColor = vec4(vUv.y, vUv.y, vUv.y, 1.0) * 10.0;

    // Pattern 7
    // float strength = mod(vUv.y *10.0, 1.0);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 8
    // float strength = mod(vUv.y *10.0, 1.0);
    // strength = step(0.9, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 10
    // float strength = mod(vUv.x *10.0, 1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 11
    // float strength = mod(vUv.x *10.0, 1.0);
    // strength = step(0.8, strength);
    // strength += step(0.8, mod(vUv.y *10.0, 1.0));
    //
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 12
    // float strength = mod(vUv.x *10.0, 1.0);
    // strength = step(0.8, strength);
    // strength *= step(0.8, mod(vUv.y *10.0, 1.0));
    //
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 13
    // float strength = mod(vUv.x *10.0, 1.0);
    // strength = step(0.2, strength);
    // strength *= step(0.8, mod(vUv.y *10.0, 1.0));
    //
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 14
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));
    //
    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));
    //
    // float strength = barX + barY;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 15
    // float barX = step(0.4, mod(vUv.x * 10.0 + 0.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));
    //
    // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));
    //
    // float strength = barX + barY;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 16
    // float strength = abs(vUv.x - 0.5);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 17
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 18
    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 19
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 20
    // float square1 = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // float square2 = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // float strength = square1 * square2;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 21
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 22
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // strength *= floor(vUv.y * 10.0) / 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 23
    // float strength = random(vUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 24
    // vec2 gridUv = vec2(floor(vUv.x * 10.0) / 10.0, floor(vUv.y * 10.0) / 10.0);
    // float strength = random(gridUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 25
    // vec2 gridUv = vec2(floor(vUv.x * 10.0) / 10.0, floor((vUv.y + vUv.x) * 10.0) / 10.0);
    // float strength = random(gridUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 26
    // float strength = length(vUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 27
    // float strength = length(vUv - vec2(0.5, 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 28
    // float strength = 1.0 - length(vUv - vec2(0.5, 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 29
    // float strength = 0.01 / distance(vUv, vec2(0.5, 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 30
    // vec2 lightUv = vec2(vUv.x*0.50 + 0.25, vUv.y);
    // float strength = 0.01 / distance(lightUv, vec2(0.5, 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 31
    // vec2 lightUvX = vec2(vUv.x*0.50 + 0.25, vUv.y);
    // float lightX = 0.01 / distance(lightUvX, vec2(0.5, 0.5));
    //
    // vec2 lightUvY = vec2(vUv.x, vUv.y*0.50 + 0.25);
    // float lightY = 0.01 / distance(lightUvY, vec2(0.5, 0.5));
    //
    // float strength = lightX + lightY;
    //
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 32
    // vec2 rotatedUv = rotate(vUv, 3.14159/4.0, vec2(0.5, 0.5));
    // vec2 lightUvX = vec2(rotatedUv.x*0.50 + 0.25, rotatedUv.y);
    // float lightX = 0.01 / distance(lightUvX, vec2(0.5, 0.5));
    //
    // vec2 lightUvY = vec2(rotatedUv.x, rotatedUv.y*0.50 + 0.25);
    // float lightY = 0.01 / distance(lightUvY, vec2(0.5, 0.5));
    //
    // float strength = lightX + lightY;
    //
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 33
    // float strength = step(0.4, distance(vUv, vec2(0.5, 0.5)));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 34
    // float strength = abs(distance(vUv, vec2(0.5, 0.5)) - 0.25);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 35
    // float strength = step(0.01, abs(distance(vUv, vec2(0.5, 0.5)) - 0.25));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 36
    // vec2 distortedVuV = vec2(vUv.x, sin(vUv.x*30.0)*0.1+vUv.y);
    // float strength = 1.0 - step(0.01, abs(distance(distortedVuV, vec2(0.5, 0.5)) - 0.25));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 37
    // vec2 distortedVuV = vec2(sin(vUv.y*30.0)*0.1+vUv.x, sin(vUv.x*30.0)*0.1+vUv.y);
    // float strength = 1.0 - step(0.01, abs(distance(distortedVuV, vec2(0.5, 0.5)) - 0.25));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 38
    // vec2 distortedVuV = vec2(sin(vUv.y*100.0)*0.1+vUv.x, sin(vUv.x*100.0)*0.1+vUv.y);
    // float strength = 1.0 - step(0.01, abs(distance(distortedVuV, vec2(0.5, 0.5)) - 0.25));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 39
    // float angle = atan(vUv.x, vUv.y);
    // float strength = angle;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 40
    // float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
    // float strength = angle;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 41
    // float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
    // angle /= 3.14159 * 2.0;
    // angle += 0.5;
    // float strength = angle;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 42
    // float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
    // angle /= 3.14159 * 2.0;
    // angle += 0.5;
    // angle *= 10.0;
    // angle = mod(angle, 1.0);
    // float strength = angle;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 42
    // float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
    // angle /= 3.14159 * 2.0;
    // angle += 0.5;
    // angle = sin(angle * 200.0);
    // float strength = angle;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 43
    float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
    angle /= 3.14159 * 2.0;
    angle += 0.5;
    float sinusoid = sin(angle * 100.0);

    float radius = 0.25 + sinusoid * 0.02;
    float strength = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5, 0.5)) - radius));
    gl_FragColor = vec4(strength, strength, strength, 1.0);
}
