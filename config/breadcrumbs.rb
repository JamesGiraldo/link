crumb :root do
  link "HOME", root_path
end

crumb :SUSCRIPTORES do
  link "SUSCRIPTORES", clientes_path
end

crumb :new_subcriptor do |sus|
  link "SUSCRIPCIÓN", new_cliente_path(sus)
end

crumb :imagenes do
  link "SLAIDERS", imagenes_path
end

crumb :new_image do |img|
  link "NUEVA IMG", new_imagen_path(img)
end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
