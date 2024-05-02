using Microsoft.EntityFrameworkCore;


//politicas para evitar el cors
string policy = "MyPolicy";

var builder = WebApplication.CreateBuilder(args);



//politicas
/*builder.Services.AddCors(options =>
{
    options.AddPolicy(name: policy, build =>
    {
        build.SetIsOriginAllowed(origin => new Uri(origin).Host == "*")
        .AllowAnyHeader().AllowAnyMethod(); 
        /*build.SetIsOriginAllowed(origin => new Uri(origin).Host == "localhost")
        .AllowAnyHeader().AllowAnyMethod();
    });
});*/

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: policy, build =>
    {
        build.WithOrigins("http://localhost:7192", "http://127.0.0.1:5501")
        .AllowAnyHeader().AllowAnyMethod();
    });
});

// Add services to the container.
builder.Services.AddControllers();
//se agrega el contexto y el string de conexion a nuestra aplicacion web
builder.Services.AddDbContext<apiUCRES.Contexto.DbContextUCRES>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("StringConexion")));


// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();
//le decimos a la app que use esta politica
app.UseCors(policy);


// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
