LoadLibrary("Renderer")
LoadLibrary("Sprite")
LoadLibrary("System")
LoadLibrary("Texture")

gRenderer = Renderer:Create()

gTileSprite = Sprite:Create()
gGrassTexture = Texture.Find("grass_tile.png")
gTileSprite:SetTexture(gGrassTexture)

gTileWidth = gGrassTexture:GetWidth()
gTileHeight = gGrassTexture:GetHeight()

gDisplayWidth = System.ScreenWidth()
gDisplayHeight = System.ScreenHeight()

gTilesPerRow = math.ceil(gDisplayWidth/gTileWidth)
gTilesPerColumn = math.ceil(gDisplayHeight/gTileHeight)

gTop = gDisplayHeight / 2 - gTileHeight / 2 
gLeft = -gDisplayWidth / 2 + gTileWidth / 2

function update()
    for j = 0, gTilesPerColumn - 1 do
        for i = 0, gTilesPerRow - 1 do
            gTileSprite:SetPosition(gLeft + i * gTileWidth, gTop - j * gTileHeight)
            gRenderer:DrawSprite(gTileSprite)
        end
    end
end