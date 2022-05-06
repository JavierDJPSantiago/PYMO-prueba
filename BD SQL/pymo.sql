CREATE SCHEMA pymo;
USE pymo;

CREATE TABLE producto(id_producto INT NOT NULL AUTO_INCREMENT, primary key (id_producto),
       nombre VARCHAR(256) NOT NULL,
       descripcion VARCHAR(256) NOT NULL
);

CREATE TABLE hospital(
       id_hospital INT NOT NULL AUTO_INCREMENT, primary key (id_hospital),
       nombre_hospital VARCHAR(256) NOT NULL,
       numero_casos INT UNSIGNED NOT NULL
);

CREATE TABLE tipo_movimiento(
       id_movimiento INT NOT NULL AUTO_INCREMENT, primary key (id_movimiento),
        descripcion VARCHAR(256) NOT NULL
);

CREATE TABLE bodega(
       id_bodega INT NOT NULL AUTO_INCREMENT, primary key (id_bodega),
       cantidad INT UNSIGNED NOT NULL,
       id_producto INT NOT NULL,
       FOREIGN KEY (`id_producto`) REFERENCES `pymo`.`producto` (`id_producto`)
);

CREATE TABLE insumos(
       id_insumos INT NOT NULL AUTO_INCREMENT, primary key (id_insumos),
       numero_cantidad INT UNSIGNED NOT NULL,
       fecha VARCHAR(256) NOT NULL,
       id_producto INT NOT NULL,
       id_bodega INT NOT NULL,
       id_hospital INT NOT NULL,
       id_movimiento INT NOT NULL,
       FOREIGN KEY (`id_producto`) REFERENCES `pymo`.`producto` (`id_producto`),
       FOREIGN KEY (`id_bodega`) REFERENCES `pymo`.`bodega` (`id_bodega`),
       FOREIGN KEY (`id_hospital`) REFERENCES `pymo`.`hospital` (`id_hospital`),
       FOREIGN KEY (`id_movimiento`) REFERENCES `pymo`.`tipo_movimiento` (`id_movimiento`)
);

