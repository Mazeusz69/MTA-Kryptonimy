//---------------------------------------------------------------------
// Shader napisany dla Modern Stories 2021 (C)
// Mazeusz* <mazeusz@msmta.pl>
// Zakaz używania na innych serwerach
//---------------------------------------------------------------------
texture gTexture;

technique TexReplace
{
    pass P0
    {
        Texture[0] = gTexture;
    }
}