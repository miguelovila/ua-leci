package aula07.exec2;

public abstract class Data {

    public abstract void setData(int dia, int mes, int ano);
    public abstract int getDia();
    public abstract int getMes();
    public abstract int getAno();
    public abstract void incrementar();
    public abstract void decrementar();
	//public abstract int comparar(Data data);

	public static boolean isMesValido(int mes) {
		return mes >= 1 && mes <= 12;
	}

	public static int diasDoMes(int mes, int ano) {
		if (mes == 2) {
			if (isBisseisto(ano))
				return 29;
			return 28;
		} else if (mes == 4 || mes == 6 || mes == 9 || mes == 11) {
			return 30;
		}
		return 31;
	}

	public static boolean isBisseisto(int ano) {
		return (ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0;
	}

	public static boolean isValida(int dia, int mes, int ano) {
		return isMesValido(mes) && dia >= 1 && dia <= diasDoMes(mes, ano);
	}

	public void incrementar(int dias) {
		for (int i = 0; i < dias; i++) incrementar();
	}

    public void decrementar(int dias) {
		for (int i = 0; i < dias; i++) decrementar();
	}

	@Override
	public String toString() {
		return String.format("%02d/%02d/%04d", this.getDia(), this.getMes(), this.getAno());
	}
    
}