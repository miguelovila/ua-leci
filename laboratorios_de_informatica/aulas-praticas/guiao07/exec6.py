from PIL import Image
import sys
import os

def main(fnames):
    for fname in fnames[1:]:
        im = Image.open(fname)
        name = fname.split('.')[0]
        ext  = fname.split('.')[1].lower()
        if (ext != 'jpeg' and ext != 'jpg'):
            print("Skipped: %s" % fname)
            continue
        for f in ['png', 'tiff', 'bmp']:
            print(f"Processing: {fname} ({ext} to {f})")
            im.save(f"./out/exec6-{name}.{f}", format=f)
            print(f"Before: {os.path.getsize(fname)} bytes")
            print(f" After: {os.path.getsize(f'./out/exec6-{name}.{f}')} bytes")

main(sys.argv)