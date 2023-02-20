window.addEventListener("load", carga);
window.addEventListener("load", eventos);

function eventos() {
    $("select[name=clases]").change(function(){
        alert($('select[name=clases]').val());
        displayResult("XArchivos/"+$('select[name=clases]').val(),"XArchivos/xClases", "contenido");
    });
}

function carga() {
    displayResult("XArchivos/Botones","XArchivos/xBotones", "botones");
    displayResult("XArchivos/1","XArchivos/xClases", "contenido");
}


function displayResult(XML, XSL, contenedor)
{
    xml = loadXMLDoc(XML+".xml");
    xsl = loadXMLDoc(XSL+".xsl");
    // code for IE "Internet Explorer"
    if (window.ActiveXObject || xhttp.responseType == "msxml-document")
    {
        ex = xml.transformNode(xsl);//une un XSL a XML para Explorer
        document.getElementById(contenedor).innerHTML = ex;//Inyecta el XMLT en el ELEMENTO
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument)
    {
        xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);//Importa el XSL
        resultDocument = xsltProcessor.transformToFragment(xml, document);//Une un XSL a un XML
        document.getElementById(contenedor).innerHTML="";//Limpia el contenedor de la materia anterior.
        document.getElementById(contenedor).appendChild(resultDocument);//Agrega un XHTMLT al Elemento
    }
}


function loadXMLDoc(filename)
{
    if (window.ActiveXObject)
    {//Si usas explorer, se usará esto.
        xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    }
    else
    {
        xhttp = new XMLHttpRequest();
    }
    
    xhttp.open("GET", filename, false);
    try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
    
    xhttp.send("");
    return xhttp.responseXML;
}






