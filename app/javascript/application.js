// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import "bootstrap/dist/css/bootstrap.min.css"; // Importar CSS
import "./stylesheets/custom.css";
import Rails from "@rails/ujs";
Rails.start();
