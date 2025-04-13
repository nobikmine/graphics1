#version 330 core
out vec4 FragColor;

uniform float timeValue;

void main()
{
    // Используем синус времени для плавного изменения цвета
    float redValue = (sin(timeValue) + 1.0) / 2.0;
    float greenValue = (sin(timeValue + 2.0) + 1.0) / 2.0;
    float blueValue = (sin(timeValue + 4.0) + 1.0) / 2.0;
    
    FragColor = vec4(redValue, greenValue, blueValue, 1.0);
}