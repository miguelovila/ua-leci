package aula05;

public class Calendario {
    private int ano, dia_inicio_ano;

    Calendario(int ano, int dia_inicio_ano) {
        this.ano = ano;
        this.dia_inicio_ano = dia_inicio_ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getAno() {
        return this.ano;
    }

    public void setDiaInicioAno(int dia_inicio_ano) {
        this.dia_inicio_ano = dia_inicio_ano;
    }

    public int getDiaInicioAno() {
        return this.dia_inicio_ano;
    }

    private int diaInicioMes(int mes) {
        Data data = new Data(1,1,this.ano);
        int dia_inicio_mes = this.dia_inicio_ano;
        while(data.getMes() < mes) {
            data.incrementarDias(1);
            if (dia_inicio_mes == 7) dia_inicio_mes = 1;
            else dia_inicio_mes++;
        }
        return dia_inicio_mes;
    }

    public String calendarioDoMes(int mes) {
        final String[] meses = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };

        return "\n" + textoCentrado(meses[mes - 1] + " " + this.ano) + "\n" + "Su Mo Tu We Th Fr Sa" + "\n" + construtorDeString(mes) + "\n";
    }

    private String textoCentrado(String texto) {
        int padding = (20 - texto.length()) / 2;
        return " ".repeat(padding) + texto + " ".repeat(padding);
    }

    private String construtorDeString(int mes) {
        Data data = new Data(1,mes,this.ano);
        int dias = data.numeroDeDias();
        int inicio_do_mes = this.diaInicioMes(mes);
        int dia_semana = this.diaInicioMes(mes);

        String dias_espacos = new String("   ".repeat(inicio_do_mes - 1));

        for (int i = 1; i <= dias; i++) {
            if (dia_semana == 1) {
                dias_espacos += String.format("%2d ", i);
                dia_semana++;
            } else if (dia_semana == 7) {
                dias_espacos += String.format("%2d\n", i);
                dia_semana = 1;
            } else {
                dias_espacos += String.format("%2d ", i);
                dia_semana++;
            }
        }
        return dias_espacos;
    }

    public String toString() {
        String calendarios = "";
        for (int i=1; i<=12; i++) {
            calendarios += this.calendarioDoMes(i);
        }
        return calendarios;
    }
}
