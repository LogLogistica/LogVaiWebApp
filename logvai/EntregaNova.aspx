﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EntregaNova.aspx.cs" Inherits="NovaEntrega" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>LOGVAI - Nova Entrega</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <style>
        /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
        #map {
            height: 100%;
            width: 50%;
        }
        /* Optional: Makes the sample page fill the window. */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>

</head>

<body>

    <div class="w3-half">
        <header class="w3-container w3-light-gray w3-center">
            <h6><strong>Nova Entrega</strong></h6>
        </header>

        <!-- PONTO1 -->
        <div class="w3-container">
            <p><span id="badge1" class="w3-badge w3-light-blue">A</span> Local de retirada (coleta)</p>
            <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputPonto1" placeholder="Ex: Av. Tancredo Neves" style="width: 400px" onblur="coordponto1();" />
            <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputNumero1" placeholder="No." style="width: 80px" onblur="coordponto1();"  />
            <p><input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputComplemento1" placeholder="Complemento" style="width: 400px" />&nbsp;&nbsp;&nbsp;</p>
            <p><textarea class="w3-input w3-border w3-round" name="detalhes1" rows="2" placeholder="Com quem falar? O que deve ser feito?" style="width: 490px"></textarea></p>
        </div>
        <!-- PONTO1 -->


        <!-- PONTO2 -->
        <div class="w3-container">
            <p><span id="badge2" class="w3-badge w3-light-blue">B</span> Local de destino (entrega)</p>
            <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputPonto2" placeholder="Ex: Av. Tancredo Neves" style="width: 400px" onblur="coordponto2();"/>
            <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputNumero2" placeholder="No." style="width: 80px" onblur="coordponto2();" />
            <p>
                <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputComplemento2" placeholder="Complemento" style="width: 200px" />&nbsp;&nbsp;&nbsp;
                <input class="w3-check" type="checkbox" name="OpTipoPonto2" value="BancoPonto2"><label class="w3-small">&nbsp;Banco, Repartição Pública ou Correios</label>
            </p>
            <p>
                <textarea class="w3-input w3-border w3-round" name="detalhes1" rows="2" placeholder="Com quem falar? O que deve ser feito?" style="width: 490px"></textarea></p>
        </div>
        <!-- PONTO2 -->



        <!-- PONTO3 -->
        <div class="w3-container">
            <p>
                <span class="w3-badge w3-light-blue">C</span>&nbsp;<input class="w3-check" type="checkbox" name="chkRetorno" value="retorno">
                <label class="w3-small">Retornar ao endereço inicial</label>
            </p>

            <div id="idPonto3" style="display: none">
                <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputPonto3" placeholder="Ex: Av. Tancredo Neves" style="width: 400px" />
                <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputNumero3" placeholder="No." style="width: 80px" />
                <p>
                    <input class="w3-border w3-round w3-hover-light-gray" type="text" id="inputComplemento3" placeholder="Complemento. Ex: Sala 101" style="width: 490px" /></p>
                <p>
                    <textarea class="w3-input w3-border w3-round" name="detalhes1" rows="2" placeholder="Com quem falar? O que deve ser feito?" style="width: 490px"></textarea></p>
            </div>
        </div>
        <!-- PONTO3 -->


        <!-- TOTAIS -->
        <div class="w3-container w3-border w3-light-gray" style="width:98%;">
            <br>
            <button id="btCalcular" class="w3-button w3-block w3-round w3-blue w3-hover-green" onclick="GeoCodeCalc01();">Calcular</button>
            <br>
            <div class="w3-container">
                <div class="w3-third w3-center w3-text-gray">Distância:</div>
                <div class="w3-third w3-center w3-text-gray">Duração:</div>
                <div class="w3-third w3-center w3-text-gray">Valor:</div>
            </div>

            <div class="w3-container">
                <div class="w3-third w3-center">
                    <strong><span id="txtDist" class="w3-text-blue">0Km</span></strong>
                </div>
                <div class="w3-third w3-center">
                    <strong><span id="txtDuracao" class="w3-text-blue">0min</span></strong>
                </div>
                <div class="w3-third w3-center">
                    <strong><span id="txtValor" class="w3-text-blue">R$ 0,00</span></strong>
                </div>
            </div>

            <div id="idDiv1" style="display: none">
                <br>
                <button id="btSolicitar" class="w3-button w3-block w3-round w3-green w3-hover-blue" onclick="ExibirModal();">Gostou? Solicite Agora</button>
                <br>
            </div>
        </div>
        <!-- TOTAIS -->

    </div>

    <!-- MAPA -->
    <div id="map" class="w3-right"></div>
    <!-- MAPA -->

    <script src="scripts/codeEntregaNova.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCOmedP-f3N7W7CPxaRoCZJ5mTMm6g0Ycc&libraries=places&callback=initMap" async defer></script>

</body>

</html>
