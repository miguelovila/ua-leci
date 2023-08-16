import csv, sys

def main(d):
    min_temp, max_temp, sum_temp, num_reg, avg_temp = sys.maxsize, -sys.maxsize, 0, 0, 0
    with open(d, 'r') as f:
        f.readline()
        r = csv.reader(f, delimiter=',')
        for l in r:
            if float(l[3]) < min_temp: min_temp = float(l[3])
            if float(l[3]) > max_temp: max_temp = float(l[3])
            sum_temp += float(l[3])
            num_reg += 1
        avg_temp = sum_temp / num_reg
    print('Mínimo: {}'.format(min_temp))
    print('Máximo: {}'.format(max_temp))
    print('Média : {:.2f}'.format(avg_temp))
main(sys.argv[1])