using Microsoft.EntityFrameworkCore;
using UCRES_Backend.Models;
using UCRES_Backend.Models.Response;


string policy = "MyPolicy";

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<UCRES_Backend.Models.UCRESDbcontext>(options =>
               options.UseSqlServer(builder.Configuration.GetConnectionString("StringConexion")));

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: policy, build =>
    {
        build.SetIsOriginAllowed(origin => new Uri(origin).Host == "Localhost")
        .AllowAnyHeader().AllowAnyMethod();

    });
});


//
builder.Services.AddDbContext<UCRESDbcontext>();
// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

app.UseCors(policy);

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapGet("/Grafica", async (UCRESDbcontext context) =>
{
    var matriculasPorA�o = await context.Estudiantes
        .GroupBy(e => e.A�oMatricula)
        .Select(g => new { A�o = g.Key, CantidadEstudiantes = g.Count() })
        .OrderBy(x => x.A�o)
        .ToListAsync();

    var stockResponses = matriculasPorA�o.Select(x => new SctockResponse
    {
        Name = x.A�o,
        Quantity = x.CantidadEstudiantes
    }).ToList();

    return  stockResponses;
});

app.Run();
