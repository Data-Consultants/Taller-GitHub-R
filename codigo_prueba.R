    
    # #####################################################
    #       Taller de Conexión de GitHub con R
    #                   27/08/2022
    #           Lizzeth Gómez Rodríguez
    # #####################################################
    
    
    # 1. INTRODUCCIÓN A GITHUB (Creacion de repositorios, clonar, pull y push)
    # ====================================================================== 
   
    # 1. Instalación estándar de Git: https://git-scm.com/downloads
    # 2. Crear un repositorio en GitHub
    # 4. Crear un proyecto con version control (Git)
    # 5. Clonar el repositorio a la computadora local
    
    # 6. Crear el codigo
    
    getwd()
    df <- mtcars
    names(mtcars)    
    summary(df$mpg)
    
    for(i in names(mtcars)){
        print(summary(df[i]))
    }
    
    
    plot(df$hp, main = "Grafico", ylab = "Caballos de fuerza")
    
    
    # 7. Guardamos el codigo
    # (debe guardarse en la carpeta en donde se encuentre el archivo 
    # de extension .Rproj o subcarpetas dentro de esta)
    
    # Nota: los cambios y actualizaciones siempre se van a guardar en el servidor local
    
    # 8. Ir a la pestaña de Git y seleccionar(checkpoint) los archivos a subir/actualizar en el
    # repositorio de GitHub
    # 9. Crear un commit(Siempre hacer esto sino se hace, los cambios no se subirán a GitHub)
    # 10. Hacer el Push (Puede pedir que se ingresen las credenciales de GitHub)
    
    
    # ---------------------------------------------------
    #                   EJERCICIO 1
    # ---------------------------------------------------
    
    # 1. Clonar este repositorio al servidor local (No Fork)
    # 2. Hacer modificaciones al codigo
    # 3. Intentar subir los cambios a GitHub
    
    
    
    
    # 2. PULL REQUEST (permisos y creacion de branch)
    # =================================================================
    
    # Los permisos permiten que otros usaurios modifiquen nuestro codigo o
    # nosotros podamos modificar el de ellos sin problema alguno.
    # 1. Dar permisos: Ir a settings del repositorio en GitHub
    # 2. En Access click en Colaboradores
    # 3. Agregar colaborador
    # 4. Aceptar la invitacion (llega a notificaciones)
    

    
    # Pull request con permisos pero creando una rama(branch)
    
    # 1. Modificar codigo
    names(mtcars)
    # 2. Creamos una nueva branch desde R (en la pestaña de git, donde dice "main")
    # 3. Guardamos cambios del codigo y hacemos commit
    # 4. Hacemos el pull y verifcamos en GitHub que se haya actualizado el repo
    # 5. Ir al repo de GitHub y Verificar que no haya problemas de codigo (debe aparecer en verde el pull request)
    # 6. Crear el Pull request
    # 7. Al tener permisos ambos autores pueden hacer el merge
    # 8. Nuevamente hacen un commit y automaticamente se cierra el pull request
    # 9. Verificamos que en la branch "main" ya se encuentren nuestros cambios.
    
    # Nota, si se guardan cambios antes de cambiar el branch, 
    # hay que agregar commit, pero se sugiere mejor deshacerlos con "revert"
    
    
    # Pull request externos (sin permisos)
    # 1. Hacer Fork desde GitHub y clonar el repo deseado de otro usuario
    # 2. Hacer modificaciones al codigo y guardar
    # 3. Crear una nueva branch
    # 4. Hacer el commit
    # 5. Hacer el Pull
    # 6. Ir al fork del repo y colocarse en la branch creada
    # 7. Hacer el Pull request
    # 8. Esperar a que el usuario del repo acepte los cambios y haga el merge
    
    
    # COLABORATORY CODE
    
    # --------------------------------------------------
    #                   EJERCICIO 2
    # --------------------------------------------------
    
    # 1. Hacer un Fork del repositorio de alguno de sus compañeros
    #    (mandar la liga al chat y elegir el que sea)
    # 2. Clonar repositorio a la computadora local usando R
    # 3. Hacer modificaciones al código
    # 4. Crear una nueva rama y hacer un Pull Request
    # 5. Aceptar/rechazar la petición del otro compañero. 
    
    
    # Almacenamiento de Archivos
    # Desde R y GitHub
    # Subir archivos csv, y png (graficas), pdfs(Rmarkdown)
    
    # Exportar un grafico
    png("grafico.png")
    plot(df$hp, main = "Grafico", ylab = "Caballos de fuerza")
    dev.off()
    
    # Tips para no cometer conflictos en repositorio propio
    # Siempre hacer pull para obtener la version mas actualizada
    # Hacer commits por separado y de inmediato el push
    # Si se encuentran en conflicto revisar las lineas de codigo en ambos scripts (se recomienda hacer los reverts)
    # Resolver conflictos colaborativos con branchs
    
    