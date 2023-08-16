package aula07.exec2;

public class DataDMY extends Data {
	private int dia, mes, ano;

	public DataDMY(int dia, int mes, int ano) {
        this.setData(dia, mes, ano);
	}

	public void setData(int dia, int mes, int ano) {
        if (!isValida(dia, mes, ano)) throw new IllegalArgumentException("Data inválida");
		this.dia = dia; this.mes = mes; this.ano = ano;
	}

	public int getDia() { return this.dia; }
	public int getMes() { return this.mes; }
	public int getAno() { return this.ano; }

	public void incrementar() {
		if (this.dia == diasDoMes(this.mes, this.ano)) {
			this.dia = 1;
			if (this.mes == 12) {
				this.mes = 1;
				this.ano++;
			} else {
				this.mes++;
			}
		} else {
			this.dia++;
		}
	}
	public void decrementar() {
		if (this.dia == 1) {
			if (this.mes == 1) {
				this.mes = 12;
				this.ano--;
			} else {
				this.mes--;
			}
			this.dia = diasDoMes(this.mes, this.ano);
		} else {
			this.dia--;
		}
	}

	public int comparar(Data data) {
		if (this.getAno() < data.getAno()) return -1;
		else if (this.getAno() > data.getAno()) return 1;
		if (this.getMes() < data.getMes()) return -1;
		else if (this.getMes() > data.getMes()) return 1;
		if (this.getDia() < data.getDia()) return -1;
		else if (this.getDia() > data.getDia()) return 1;
		return 0;
	}
}