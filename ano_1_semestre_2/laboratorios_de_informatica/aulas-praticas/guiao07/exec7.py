from PIL import Image
from PIL import ExifTags
import sys

def main(fnames):
	for fname in fnames[1:]:
		im = Image.open(fname)
		width, height = im.size
		print(" Imagem: %s" % fname)
		print("   Mode: %s" % im.mode)
		print() if fnames.index(fname) < len(fnames)-1 else ""
        
main(sys.argv)
