Rails.application.routes.draw do



  resources :coches

  resources :users

  resources :tickets

  get 'seleccion/index'

resources :posts
resources :usuarios_session_controler
get 'login' => 'usuario_session#new'

get'logout' => 'usuario_session#new'




  get 'usuarios_session_controler/new'

  get 'usuarios_session_controler/create'

  get 'usuarios_session_controler/destroy'

  get 'usuarios_controler/new'

  get 'usuarios_controler/create'

  get 'usuarios_controler/destroy'

  get 'new/create'

  get 'new/destroy'

  get 'test_sesiones/iniciar_sesion'
  post "test_sesiones/iniciar_sesion"





  get 'test_sesiones/cerrar_sesion'

  get 'test_sesiones/bienvenida'

  resources :trayectos

  resources :terminal_llegadas

  resources :boletos

  resources :categoria

  resources :terminales

  resources :empleados

  resources :usuarios

  get 'principal/index'
    





#root :to => 'principal#index'
root :to => 'seleccion#index'
end
