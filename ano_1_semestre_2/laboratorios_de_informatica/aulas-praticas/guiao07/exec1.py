from PIL import Image
from PIL import ExifTags
import sys
def main(fnames):
	for fname in fnames[1:]:
		im = Image.open(fname)
		width, height = im.size
		print(" Imagem: %s"    % fname)
		print("Largura: %dpx" % width)
		print(" Altura: %dpx" % height)
		print("Formato: %s"   % im.format)
		# Há alguns ficheiros que não tem exif tais como os gifs
		try:
			print("Metadados:")
			for k, v in im._getexif().items(): print(str(ExifTags.TAGS[k])+" : "+str(v))
		except:
			print("Metadados: Não encontrados")
		print() if fnames.index(fname) < len(fnames)-1 else ""
main(sys.argv)
