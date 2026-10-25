"""Export approved artwork to Android launcher densities (requires Pillow).

Normal APK builds use exported PNGs and do not need Python or Pillow.
"""
from pathlib import Path
from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parents[1]
art = Image.open(ROOT / "assets/branding/shuguang-icon-concept-v1.png").convert("RGB")
for density, scale in [("mdpi", 1), ("hdpi", 1.5), ("xhdpi", 2), ("xxhdpi", 3), ("xxxhdpi", 4)]:
    folder = ROOT / "apktool/res" / ("mipmap-" + density)
    size = round(48 * scale)
    icon = art.resize((size, size), Image.Resampling.LANCZOS)
    icon.save(folder / "ic_launcher.png", optimize=True)
    mask = Image.new("L", (size * 4, size * 4), 0)
    ImageDraw.Draw(mask).ellipse((0, 0, size * 4 - 1, size * 4 - 1), fill=255)
    rounded = icon.convert("RGBA")
    rounded.putalpha(mask.resize((size, size), Image.Resampling.LANCZOS))
    rounded.save(folder / "ic_launcher_round.png", optimize=True)
    # A 108dp adaptive layer has a 72dp normal visible viewport. Fit the
    # square artwork within that viewport to preserve the mark under masks.
    layer_size, artwork_size = round(108 * scale), round(72 * scale)
    foreground = Image.new("RGB", (layer_size, layer_size), "#237968")
    fitted = art.resize((artwork_size, artwork_size), Image.Resampling.LANCZOS)
    offset = (layer_size - artwork_size) // 2
    foreground.paste(fitted, (offset, offset))
    foreground.save(folder / "ic_launcher_foreground.png", optimize=True)
print("Launcher artwork exported for all five Android densities.")
