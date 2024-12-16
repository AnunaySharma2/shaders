uniform vec3 uColor;

varying vec3 vNormal;
varying vec3 vPosition;

vec3 ambientLight(vec3 lightColor, float lightIntensity){
    return lightColor * lightIntensity;
}

vec3 directionalLight(vec3 lightColor, float lightIntensity, vec3 normal, vec3 lightPosition, vec3 viewDirection){
    vec3 lightDirection = normalize(lightPosition);
    vec3 lightReflection = reflect(- lightDirection, normal);

    // Shading
    float shading = dot(normal, lightDirection);
    shading = max(shading, 0.0);

    // Specular
    float specular = -dot(viewDirection, lightReflection);
    specular = pow(max(specular, 0.0), 32.0);

    return lightColor * lightIntensity * shading + lightColor * specular * lightIntensity;
}

vec3 pointLight(vec3 lightColor, float lightIntensity, vec3 normal, vec3 lightPosition, vec3 viewDirection, vec3 Position){
    vec3 lightDelta = lightPosition - Position;
    float lightDistance = length(lightDelta);
    vec3 lightDirection = normalize(lightDelta);
    vec3 lightReflection = reflect(- lightDirection, normal);

    // Shading
    float shading = dot(normal, lightDirection);
    shading = max(shading, 0.0);

    // Specular
    float specular = -dot(viewDirection, lightReflection);
    specular = pow(max(specular, 0.0), 32.0);

    // Decay
    float decay = 1.0 - lightDistance * 0.3;

    return lightColor * lightIntensity * shading * decay + lightColor * specular * lightIntensity * decay;
}
void main()
{
    vec3 normal = normalize(vNormal);
    vec3 viewDirection = normalize(cameraPosition - vPosition);
    vec3 color = uColor;

    vec3 light = vec3(0.0);
    // Ambient light
    light += ambientLight(vec3(1.0), 0.03);
    light += directionalLight(vec3(0.1, 0.1, 1.0), 1.0, normal, vec3(0.0, 0.0, 3.0), viewDirection);
    light += pointLight(vec3(1.0, 0.1, 0.1), 1.0, normal, vec3(0.0, 2.5, 0.0), viewDirection, vPosition);
    light += pointLight(vec3(0.1, 1.0, 0.5), 1.0, normal, vec3(2.0, 2.0, 2.0), viewDirection, vPosition);
    color *= light;

    // Final color
    gl_FragColor = vec4(color, 1.0);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}
