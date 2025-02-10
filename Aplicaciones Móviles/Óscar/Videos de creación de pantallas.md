#moviles #videos #Oscar 

# Jetpack Compose
Cambiamos de paradigma de programación, ahora se tienen 2 tipos de capas distribuidos en 3 niveles, MVVM (Model View View Model), el jetpack compose de lo que se encarga es de modificar la capa de la vista.

Jetpack Compose está diseñado para trabajarlo como componentes, entonces toda la aplicación tendrá una alta modularidad. Los componentes se dibujan de acuerdo a una variable de estado, que son el como el sistema identifica los componentes que se deben de re-dibujar cuando se presenta una interacción con el usuario.

@Composable == @Component

**State hosting:** Donde debo de dejar las variables de estado. Una buena práctica es dejarlo en el lugar más global y accesible para nuestra clase.