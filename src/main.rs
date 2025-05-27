use actix_web::{App, HttpResponse, HttpServer, Responder, web};

async fn hello() -> impl Responder {
    HttpResponse::Ok().body("Hello Ranjan")
}

#[tokio::main]
async fn main() -> Result<(), std::io::Error> {
    HttpServer::new(move || App::new().route("/", web::get().to(hello)))
        .bind("0.0.0.0:8080")?
        .run()
        .await
}
