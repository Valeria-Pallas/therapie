# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Crear usuarios de ejemplo
User.create(email: 'usuario1@example.com', encrypted_password: '123456')
User.create(email: 'usuario2@example.com', encrypted_password: '123456')

# Crear artículos relacionados con terapias alternativas
Article.create(
  title: 'Beneficios del masaje terapéutico',
  banner_url: 'https://cdn.pixabay.com/photo/2020/02/15/16/09/loveourplanet-4851331_1280.jpg',
  description: 'Este artículo explora los beneficios del masaje terapéutico en la relajación y el alivio del estrés.',
  user_id: 1
)

Article.create(
  title: 'Magnetismo y su influencia en la salud',
  banner_url: 'https://media.istockphoto.com/id/1322277517/fr/photo/herbe-sauvage-dans-les-montagnes-au-coucher-du-soleil.jpg?s=612x612&w=0&k=20&c=tQ19uZQLlIFy8J6QWMyOL6lPt3pdSHBSDFHoXr1K_g0=',
  description: 'Descubre cómo el magnetismo se utiliza en algunas terapias alternativas para promover la salud y el bienestar.',
  user_id: 2
)

# Crear comentarios en los artículos
Comment.create(
  name: 'LAs estrellas',
  description: 'Me encanta este artículo, es muy informativo.',
  user_id: 1,
  article_id: 1
)

Comment.create(
  name: 'El universo',
  description: 'El magnetismo siempre me ha intrigado. Gracias por compartir.',
  user_id: 2,
  article_id: 2
)
