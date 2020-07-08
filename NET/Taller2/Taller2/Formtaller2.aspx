<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formtaller2.aspx.cs" Inherits="Taller2.Formtaller2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 461px;
        }

        .auto-style3 {
            width: 1046px;
        }

        .auto-style5 {
            width: 100px;
        }

        .auto-style6 {
            width: 132px;
        }

        .auto-style10 {
            color: #000000;
            background-color: #FF0000;
        }

        .auto-style11 {
            width: 100%;
            background-color: #FF0000;
        }

        .auto-style12 {
            width: 100%;
            background-color: #0066FF;
        }

        .auto-style13 {
            width: 100%;
            background-color: #00FF00;
        }

        .auto-style14 {
            background-color: #0066FF;
        }

        .auto-style15 {
            width: 84px;
            text-align: center;
            background-color: #0066FF;
        }

        .auto-style17 {
            width: 84px;
            background-color: #FF0000;
            text-align: center;
        }

        .auto-style18 {
            width: 84px;
            background-color: #00FF00;
            text-align: center;
        }
        .auto-style20 {
            width: 84px;
        }
        .auto-style23 {
            width: 314px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej1" runat="server" Text="Ejercicio 1"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej1lbl2" runat="server" Text="Dada un cantidad en pesos, obtener la equivalencia en dólares, asumiendo que la unidad
cambiaría es un dato desconocido."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej1lbl1" runat="server" Text="Pesos:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej1num1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej1btn" runat="server" Text="Calcular" OnClick="boton1_Click" BackColor="#9966FF" />
                    </td>
                    <td>
                        <asp:Label ID="ej1lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej2" runat="server" Text="Ejercicio 2"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej2lbl2" runat="server" Text="Leer un número y escribir el valor absoluto del mismo."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej2lbl1" runat="server" Text="Número:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej2num1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej2btn" runat="server" Text="Calcular" OnClick="boton2_Click" BackColor="#9966FF" />
                    </td>
                    <td>
                        <asp:Label ID="ej2lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej3" runat="server" Text="Ejercicio 3"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej3lbl4" runat="server" Text="La presión, el volumen y la temperatura de una masa de aire se relacionan por la
formula:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej3lbl1" runat="server" Text="Presión: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej3pres" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej3lbl2" runat="server" Text="Volumen: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej3vol" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej3lbl3" runat="server" Text="Temperatura: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej3temp" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej3btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej3btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej3lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej4" runat="server" Text="Ejercicio 4"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej4lbl2" runat="server" Text="Calcular el numero de pulsaciones que una persona debe tener por cada 10 segundos de
ejercicio, si la formula es:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej4lbl1" runat="server" Text="Edad: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej4num" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej4btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej4btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej4lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej5" runat="server" Text="Ejercicio 5"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej5lbl2" runat="server" Text="Calcular el nuevo salario de un obrero si obtuvo un incremento del 25% sobre su salario
anterior."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej5lbl1" runat="server" Text="Salario anterior: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej5num" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej5btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej5btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej5lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej6" runat="server" Text="Ejercicio 6"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej6lbl2" runat="server" Text="En un hospital existen tres áreas: Ginecología, Pediatría, Traumatologia."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej6lbl1" runat="server" Text="Presupuesto: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej6num" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej6btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej6btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej6lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej7" runat="server" Text="Ejercicio 7"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej7lbl2" runat="server" Text="El dueño de una tienda compra un articulo a un precio determinado. Obtener el precio
en que lo debe vender para obtener una ganancia del 30%."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej7lbl1" runat="server" Text="Valor: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej7num" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej7btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej7btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej7lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej8" runat="server" Text="Ejercicio 8"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej8lbl4" runat="server" Text="Todos los lunes, miércoles y viernes, una persona corre la misma ruta y cronometra los
tiempos obtenidos. Determinar el tiempo promedio que la persona tarda en recorrer la
ruta en una semana cualquiera."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej8lbl1" runat="server" Text="Lunes: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej8num1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej8lbl2" runat="server" Text="Miércoles: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej8num2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej8lbl3" runat="server" Text="Viernes: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej8num3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej8btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej8btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej8lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej9" runat="server" Text="Ejercicio 9"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ej9lbl4" runat="server" Text="Tres personas deciden invertir su dinero para fundar una empresa. Cada una de ellas
invierte una cantidad distinta. Obtener el porcentaje que cada quien invierte con
respecto a la cantidad total invertida."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej9lbl1" runat="server" Text="Persona 1: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej9num1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej9lbl2" runat="server" Text="Persona 2: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej9num2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="ej9lbl3" runat="server" Text="Persona 3: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej9num3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="ej9btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej9btn_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej9lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="ej10" runat="server" Text="Ejercicio 10"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="ej10lbl1" runat="server" Text="Un alumno desea saber cual será su promedio general en las tres materias mas difíciles
que cursa y cual será el promedio que obtendrá en cada una de ellas."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="ej10lblmat" runat="server" Text="Matemáticas" CssClass="auto-style10"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <table class="auto-style11">
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="ej10lbl2" runat="server" Text="Examen matemáticas: " CssClass="auto-style10"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="ej10matex" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="ej10lbl3" runat="server" Text="Tarea 1 matemáticas: " CssClass="auto-style10"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="ej10mattar1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="ej10lbl4" runat="server" Text="Tarea 2 matemáticas: " CssClass="auto-style10"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="ej10mattar2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="ej10lbl5" runat="server" Text="Tarea 3 matemáticas: " CssClass="auto-style10"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="ej10mattar3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style15">
                        <asp:Label ID="ej10lblfis" runat="server" Text="Física" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <table class="auto-style12">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl6" runat="server" Text="Examen física: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10fisex" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl7" runat="server" Text="Tarea 1 física: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10fistar1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl8" runat="server" Text="Tarea 2 física: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10fistar2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="ej10lblqui" runat="server" Text="Química"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <table class="auto-style13">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl9" runat="server" Text="Examen química: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10quiex" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl10" runat="server" Text="Tarea 1 química: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10quitar1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl11" runat="server" Text="Tarea 2 química: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10quitar2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="ej10lbl12" runat="server" Text="Tarea 3 química: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ej10quitar3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Button ID="ej10btn" runat="server" Text="Calcular" BackColor="#9966FF" OnClick="ej10btn_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="ej10lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
