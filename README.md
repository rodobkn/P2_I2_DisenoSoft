# P2_I2_DisenoSoft

# Primer Cambio

El primer cambio que hice fue agregar una función que abarca las líneas 1-7 del código. La cual es la siguiente:

```
def peopleWalk(peopleArray)
  peopleArray.map do |person|
    if person.hp > 0
      person.walk
    end
  end
end
```

Esta función se usó en la línea 87:

```
peopleWalk([mando, baby] + enemies)
```

Para así desasernos del código redundante, donde haciamos caminar uno por uno a los objetos instanciados.

# Segundo Cambio

El segundo cambio que hice fue agregar una función que abarca las líneas 9-13 del código, la cual es la siguiente:

```
def commonAttack(power_attack, enemy)
  attack = (power_attack * rand).to_i
  enemy.hp -= attack
  p "bang (-#{attack})"
end
```

La cual se usó en las líneas 27 y 71.

```
commonAttack(@power_attack, enemy)
```

```
commonAttack(@power_attack, someone)
```

El objetivo de esta función era reducir el código repetido, ya que se hacía practicamente lo mismo en las líneas con se reemplazó esta función.

# Tercer Cambio

El tercer cambio fue modificar el método *shot()* de la clase "Mando", la cual está definida en las líneas 24-30:

```
def shot(enemies)

    enemies.map do |enemy|
        commonAttack(@power_attack, enemy)
    end

end
```

Esta luego se usa en la línea 88:

```
mando.shot(enemies)
```

El objetivo de modificar este método, era que se llamaba 1 vez por cada enemigo, y como hay 2 enemigos, se llamaba 2 veces. Luego de modificarla, ahora se le pasa el array de enemigos, por lo que se llama solamente 1 vez.

# Cuarto cambio

El cuarto cambio que se hizo, fue modificar el método *the_force()* de la clase "Baby". Puesto que al igual que en el inciso 3), se tenía que llamar una vez por cada enemigo que existía, y como habían 2 enemigos, se llamaba 2 veces.

Actualmente, sólo se llama una vez, en la línea 90.

# Quinto Cambio

Yo hubiera creado un archivo especial para agregar las funciones que fueron mencionadanas en el inciso 1 y 2, pero como la profe dijo que los cambios debían ser en el mismo código, no lo hice, pero a mi parecer, hubiera sido lo mejor traspasar esas funciones a otro archivo, y luego importarlas a este código.

Lo mismo con las clases, hubiera creado un archivo para cada clase, y las hubiera importado al código main.

Espero consideren este pensamiento mencionado, aunque no se hizo, ya que a mi parecer, en una empresa real, este iniciso 5) sería lo correcto y más bonito.