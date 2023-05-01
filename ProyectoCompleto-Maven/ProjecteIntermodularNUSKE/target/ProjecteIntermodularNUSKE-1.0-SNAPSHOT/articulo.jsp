<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/articulo/styles.css">
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
  />
    <title>NuskÃ« - Login</title>
</head>
<body>
    <header>
        <section class="header-wrapper">
    
        
            <section class="titulo">
                <a href="./index.html">
                  <h3>NUSKÃ</h3>
                </a>
              </section>
        <section class="navegacion">
          <ul>
            <li class="perro">
              <a href="#">Perros</a>
              <ul class="subcategoria">
                <li><a href="#">Hogar</a></li>
                <li><a href="#">Entretenimiento</a></li>
                <li><a href="#">AlimentaciÃ³n</a></li>
                <li><a href="#">Salud e higiene</a></li>
              </ul>
            </li>
            <li class="gato">
              <a href="#">Gatos</a>
              <ul class="subcategoria">
                  <li><a href="#">Hogar</a></li>
                  <li><a href="#">Entretenimiento</a></li>
                  <li><a href="#">AlimentaciÃ³n</a></li>
                  <li><a href="#">Salud e higiene</a></li>
              </ul>
            </li>
            <li class="exotico">
              <a href="#">ExÃ³ticos</a>
              <ul class="subcategoria">
                  <li><a href="#">Hogar</a></li>
                  <li><a href="#">Entretenimiento</a></li>
                  <li><a href="#">AlimentaciÃ³n</a></li>
                  <li><a href="#">Salud e higiene</a></li>
              </ul>
            </li>
            <li class="buscador"><i class="bi bi-search"></i><input type="text" placeholder="Buscar..."/></li>
            <li class="inicio-sesion">
              <a href="login.html"><i class="bi bi-person-fill"></i></a>
            </li>
            <li class="cesta">
              <a href="registro-mascota.html"><i class="bi bi-cart-fill"></i></a>
            </li>
          </ul>
        </section>
      </section>
      </header>

      <main>
        <section class="parte-superior">
          <section class="imagen-producto">
            <figure>
                <img src="./img/ejemplo-pienso.png" alt="Producto">
            </figure>
           </section>
           <section>
            <section class="info-producto">
                <h2>Brekkies 3KG Adult</h2>
                <article>
                    <p class="precio">4,99â¬</p>
                    <div class="valoraciones">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star"></i>
                        <p>(102 valoraciones)</p>
                    </div>
                </article>
                <p class="descripcion">
                  Alimento completo para gatos - Marca Brekkies
                  Para gatos adultos y esterilizados - A partir de los 10 meses de edad.
                  Compuesto de pollo, verduras y vegetales.
                  Con elvoltorio cierra fÃ¡cil.
                </p>
                <label for="cantidad">Selecciona cantidad</label>
                <input type="number" id="cantidad" value="1" min="1" />
                <a href="">InformaciÃ³n sobre el envÃ­o</a>
      
                <div class="botones">
                  <input type="submit" id="cesta" name="cesta" value="AÃ±adir a la cesta" />
                  <button>AÃ±adir a la lista</button>
                </div>
                
              </section>
           </section>
        </section>
        <hr>
        <section class="parte-inferior">
          <h3>Â¡Escribe tu opiniÃ³n a travÃ©s de los comentarios!</h3>
          <article class="escribir-coment">
            <form>
              <label for="pseudonimo">PseudÃ³nimo:</label>
              <input type="text" id="pseudonimo" name="pseudonimo"><br><br>
              
              <label for="comentario">Comentario:</label><br>
              <textarea id="comentario" name="comentario"></textarea><br><br>
              
              <label for="valoracion">ValoraciÃ³n:</label>
              <input type="number" id="valoracion" name="valoracion" min="1" max="5"><br><br>
              
              <label for="calidad-precio">Calidad Precio:</label>
              <select id="calidad-precio" name="calidad-precio">
                <option value="excelente">Excelente</option>
                <option value="muy-buena">Muy buena</option>
                <option value="buena">Buena</option>
                <option value="aceptable">Aceptable</option>
                <option value="normal">Normal</option>
                <option value="mala">Mala</option>
                <option value="muy-mala">Muy mala</option>
              </select><br><br>
              
              <label for="ventajas">Ventajas:</label><br>
              <textarea id="ventajas" name="ventajas"></textarea><br><br>
              
              <label for="desventajas">Desventajas:</label><br>
              <textarea id="desventajas" name="desventajas"></textarea><br><br>
              
              <input type="submit" value="Enviar">
            </form>
          </article>
          
          <article>
            <h3>Comentarios</h3>
            <section class="comentarios">
              <article class="comentario">
                <p>Cliente3213</p>
                <p>Excelente servicio y atenciÃ³n al cliente. PedÃ­ un producto y me llegÃ³ en perfecto estado en el plazo que me indicaron. AdemÃ¡s, el personal fue muy amable y resolviÃ³ todas mis dudas de manera rÃ¡pida y eficiente.</p>
                <p>5</p>
                <p>Excelente</p>
                <p>Buen servicio, envÃ­o rÃ¡pido, atenciÃ³n al cliente amable y eficiente.</p>
                <p>Ninguna</p>
              </article>

              <article class="comentario">
                <p>Comprador Frecuente</p>
                <p>Me gusta mucho esta tienda online. Siempre encuentro lo que necesito a buen precio y la calidad de los productos es muy buena. El envÃ­o tambiÃ©n es rÃ¡pido y nunca he tenido problemas. Lo recomiendo sin dudarlo.</p>
                <p>4</p>
                <p>Muy buena</p>
                <p>Buena calidad de productos, buenos precios, envÃ­o rÃ¡pido.</p>
                <p>Algunos productos pueden estar agotados.</p>
              </article>

              <article class="comentario">
                <p>Cliente Insatisfecho</p>
                <p>No estoy muy contento con mi compra. El producto que recibÃ­ no era exactamente lo que esperaba y tuve que hacer una devoluciÃ³n. El proceso de devoluciÃ³n fue un poco complicado y el personal no fue muy amable. AdemÃ¡s, el envÃ­o tardÃ³ mÃ¡s de lo que me dijeron.</p>
                <p>2</p>
                <p>Aceptable</p>
                <p>Precios razonables.</p>
                <p>Producto no correspondiente, devoluciÃ³n complicada, envÃ­o tardÃ­o.</p>
              </article>
            </section>
          </article>
        </section>
       
      </main>
      
      <footer>
        <ul>
          <li><a href="#">Contacta con nosotros</a></li>
          <li><a href="#">Sobre nosotros</a></li>
          <li><a href="#">Preguntas frecuentes</a></li>
        </ul>
        <ul>
          <li><a href="#">Aviso legal</a></li>
          <li><a href="#">Preguntas frecuentes</a></li>
          <li><a href="politica-privacidad.html">PolÃ­tica de privacidad</a></li>
        </ul>
        <ul>
          <li><a href="#">Condiciones generales</a></li>
          <li><a href="#">TÃ©rminos y condiciones</a></li>
          <li><a href="#">Otros</a></li>
        </ul>
      </footer>
</body>
</html>