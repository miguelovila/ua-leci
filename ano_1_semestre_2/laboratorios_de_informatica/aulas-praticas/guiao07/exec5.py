from PIL import Image
import sys

def main(fnames):
    for fname in fnames[1:]:
        im = Image.open(fname)
        name = fname.split('.')[0]
        ext  = fname.split('.')[1]
        if ext == 'tiff':
            print("Skipped: %s" % fname)
            continue
        for i in [1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]:
            print("Processing: %s" % fname)
            im.save(f"./out/exec5-{name}-{i}.{ext}", quality=i)

main(sys.argv)