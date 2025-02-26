#!/bin/bash

if [ $# -ne 5 ]; then
    echo "Uso: $0 <usuario> <dias> <codigo_factura> <valor> <articulo>"
    exit 1
fi

FECHA=$(date '+%Y-%m-%d')
HORA=$(printf '%(%H:%M:%S)T')
touch datos.csv

USUARIO=$1
DIAS=$2
CODIGO_FACTURA=$3
VALOR=$4
ARTICULOS=$5
CANTIDAD=1
VALORTT=$(( ${VALOR} * ${CANTIDAD} ))
cat <<HTML > factura.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Factura</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="title-container">
                <h1>Factura ChumoGH ING.</h1>
                <p>Fecha: ${FECHA} - ${HORA}</p>
            </div>
            <img src="icon.png" alt="Logo" class="logo">
        </div>
        <div class="content">
            <div class="info">
                <p><strong>Usuario:</strong> ${USUARIO}</p>
                <p><strong>Días de servicio:</strong> ${DIAS}</p>
                <p><strong>Código de referencia:</strong> REF-${CODIGO_FACTURA}</p>
            </div>
            <table class="items">
                <thead>
                    <tr>
                        <th>Número de artículo</th>
                        <th>Nombre del artículo</th>
                        <th>Cantidad</th>
                        <th>Valor unitario</th>
                        <th>Valor total</th>
                    </tr>
                </thead>
                <tbody>
                    {{ARTICULOS}}
                    <tr>
                        <th>${CODIGO}</th>
                        <th>${ARTICULOS}</th>
                        <th>${CANTIDAD}</th>
                        <th>$VALOR</th>
                        <th>$VALORTT</th>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="footer">
            <p>Total: {{TOTAL}}</p>
        </div>
    </div>
</body>
</html>
HTML

cat <<CSS > styles.css
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    width: 70%; /* Ancho ajustado del contenedor principal */
    margin: 20px auto; /* Centrar el contenedor y agregar un espacio de margen */
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
    border-bottom: 2px solid #007bff; /* Línea azul en la parte inferior del encabezado */
}

.title-container {
    margin-right: auto;
}

.logo {
    width: 100px;
    height: auto;
    border-radius: 20%; /* Borde redondeado para el logo */
}

h1 {
    color: #007bff; /* Color azul para el título principal */
    font-size: 32px;
    margin: 0;
}

p {
    margin: 5px 0;
}

.content {
    margin-bottom: 20px;
}

.info {
    background-color: #f8f9fa; /* Fondo gris claro para la sección de información */
    padding: 10px;
    border-radius: 8px;
}

.items {
    width: 100%;
    border-collapse: collapse;
}

.items th,
.items td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

.footer {
    text-align: right;
    font-size: 18px;
    font-weight: bold;
    color: #007bff;
}
CSS

[[ $(dpkg --get-selections|grep -w "wkhtmltopdf"|head -1) ]] || apt-get install wkhtmltopdf -y &>/dev/null

wkhtmltopdf --title "Factura" --user-style-sheet styles.css --enable-local-file-access "factura.html" "factura.pdf"

# Verificar si la generación del PDF fue exitosa
if [ $? -eq 0 ]; then
    echo "El PDF se ha generado correctamente."
    echo "Ruta del archivo PDF generado: $(pwd)/factura.pdf"
else
    echo "Error: La generación del PDF ha fallado."
fi

rm -f factura.html

#./crear_pdf.sh factura.html "Juan Pérez" 30 "10/05/2024" "ABC123" datos.csv 80.00 factura.pdf
#bash factura.sh El_caca_TRIPAS3000 4 fffdcts62ass 2,25 "BotGen 365 Ilimitado"